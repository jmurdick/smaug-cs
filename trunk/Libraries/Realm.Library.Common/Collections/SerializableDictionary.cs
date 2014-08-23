﻿using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;

namespace Realm.Library.Common.Collections
{
    [Serializable]
    public sealed class SerializableDictionary<TKey, TVal> : Dictionary<TKey, TVal>, IXmlSerializable, ISerializable
    {
        #region Constants

        private const string ItemNodeName = "Item";
        private const string KeyNodeName = "Key";
        private const string ValueNodeName = "Value";

        #endregion

        #region Constructors

        public SerializableDictionary()
        {
        }

        public SerializableDictionary(IDictionary<TKey, TVal> dictionary)
            : base(dictionary)
        {
        }

        public SerializableDictionary(IEqualityComparer<TKey> comparer)
            : base(comparer)
        {
        }

        public SerializableDictionary(int capacity)
            : base(capacity)
        {
        }

        public SerializableDictionary(IDictionary<TKey, TVal> dictionary, IEqualityComparer<TKey> comparer)
            : base(dictionary, comparer)
        {
        }

        public SerializableDictionary(int capacity, IEqualityComparer<TKey> comparer)
            : base(capacity, comparer)
        {
        }

        #endregion

        #region Private Properties

        private XmlSerializer ValueSerializer
        {
            get { return valueSerializer ?? (valueSerializer = new XmlSerializer(typeof(TVal))); }
        }

        private XmlSerializer KeySerializer
        {
            get { return keySerializer ?? (keySerializer = new XmlSerializer(typeof(TKey))); }
        }

        #endregion

        #region Private Members

        private XmlSerializer keySerializer;
        private XmlSerializer valueSerializer;

        #endregion

        #region ISerializable Members

        private SerializableDictionary(SerializationInfo info, StreamingContext context) : base(info, context)
        {
            int itemCount = info.GetInt32("ItemCount");
            for (int i = 0; i < itemCount; i++)
            {
                KeyValuePair<TKey, TVal> kvp =
                    (KeyValuePair<TKey, TVal>)
                        info.GetValue(String.Format("Item{0}", i), typeof (KeyValuePair<TKey, TVal>));
                Add(kvp.Key, kvp.Value);
            }
        }

        void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
        {
            info.AddValue("ItemCount", Count);
            int itemIdx = 0;
            foreach (KeyValuePair<TKey, TVal> kvp in this)
            {
                info.AddValue(String.Format("Item{0}", itemIdx), kvp, typeof (KeyValuePair<TKey, TVal>));
                itemIdx++;
            }
        }

        #endregion

        #region IXmlSerializable Members

        void IXmlSerializable.WriteXml(XmlWriter writer)
        {
            foreach (KeyValuePair<TKey, TVal> kvp in this)
            {
                writer.WriteStartElement(ItemNodeName);
                writer.WriteStartElement(KeyNodeName);
                KeySerializer.Serialize(writer, kvp.Key);
                writer.WriteEndElement();
                writer.WriteStartElement(ValueNodeName);
                ValueSerializer.Serialize(writer, kvp.Value);
                writer.WriteEndElement();
                writer.WriteEndElement();
            }
        }

        void IXmlSerializable.ReadXml(XmlReader reader)
        {
            if (reader.IsEmptyElement)
                return;

            if (!reader.Read())
                throw new XmlException("Error in Deserialization of Dictionary");

            while (reader.NodeType != XmlNodeType.EndElement)
            {
                reader.ReadStartElement(ItemNodeName);
                reader.ReadStartElement(KeyNodeName);
                TKey key = (TKey) KeySerializer.Deserialize(reader);
                reader.ReadEndElement();
                reader.ReadStartElement(ValueNodeName);
                TVal value = (TVal) ValueSerializer.Deserialize(reader);
                reader.ReadEndElement();
                reader.ReadEndElement();
                Add(key, value);
                reader.MoveToContent();
            }

            reader.ReadEndElement();
        }

        XmlSchema IXmlSerializable.GetSchema()
        {
            return null;
        }

        #endregion
    }
}
