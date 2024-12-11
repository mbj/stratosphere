module Stratosphere.Logs.Delivery (
        Delivery(..), mkDelivery
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Delivery
  = Delivery {deliveryDestinationArn :: (Value Prelude.Text),
              deliverySourceName :: (Value Prelude.Text),
              fieldDelimiter :: (Prelude.Maybe (Value Prelude.Text)),
              recordFields :: (Prelude.Maybe (ValueList Prelude.Text)),
              s3EnableHiveCompatiblePath :: (Prelude.Maybe (Value Prelude.Bool)),
              s3SuffixPath :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDelivery :: Value Prelude.Text -> Value Prelude.Text -> Delivery
mkDelivery deliveryDestinationArn deliverySourceName
  = Delivery
      {deliveryDestinationArn = deliveryDestinationArn,
       deliverySourceName = deliverySourceName,
       fieldDelimiter = Prelude.Nothing, recordFields = Prelude.Nothing,
       s3EnableHiveCompatiblePath = Prelude.Nothing,
       s3SuffixPath = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Delivery where
  toResourceProperties Delivery {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Delivery", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeliveryDestinationArn" JSON..= deliveryDestinationArn,
                            "DeliverySourceName" JSON..= deliverySourceName]
                           (Prelude.catMaybes
                              [(JSON..=) "FieldDelimiter" Prelude.<$> fieldDelimiter,
                               (JSON..=) "RecordFields" Prelude.<$> recordFields,
                               (JSON..=) "S3EnableHiveCompatiblePath"
                                 Prelude.<$> s3EnableHiveCompatiblePath,
                               (JSON..=) "S3SuffixPath" Prelude.<$> s3SuffixPath,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Delivery where
  toJSON Delivery {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeliveryDestinationArn" JSON..= deliveryDestinationArn,
               "DeliverySourceName" JSON..= deliverySourceName]
              (Prelude.catMaybes
                 [(JSON..=) "FieldDelimiter" Prelude.<$> fieldDelimiter,
                  (JSON..=) "RecordFields" Prelude.<$> recordFields,
                  (JSON..=) "S3EnableHiveCompatiblePath"
                    Prelude.<$> s3EnableHiveCompatiblePath,
                  (JSON..=) "S3SuffixPath" Prelude.<$> s3SuffixPath,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeliveryDestinationArn" Delivery where
  type PropertyType "DeliveryDestinationArn" Delivery = Value Prelude.Text
  set newValue Delivery {..}
    = Delivery {deliveryDestinationArn = newValue, ..}
instance Property "DeliverySourceName" Delivery where
  type PropertyType "DeliverySourceName" Delivery = Value Prelude.Text
  set newValue Delivery {..}
    = Delivery {deliverySourceName = newValue, ..}
instance Property "FieldDelimiter" Delivery where
  type PropertyType "FieldDelimiter" Delivery = Value Prelude.Text
  set newValue Delivery {..}
    = Delivery {fieldDelimiter = Prelude.pure newValue, ..}
instance Property "RecordFields" Delivery where
  type PropertyType "RecordFields" Delivery = ValueList Prelude.Text
  set newValue Delivery {..}
    = Delivery {recordFields = Prelude.pure newValue, ..}
instance Property "S3EnableHiveCompatiblePath" Delivery where
  type PropertyType "S3EnableHiveCompatiblePath" Delivery = Value Prelude.Bool
  set newValue Delivery {..}
    = Delivery {s3EnableHiveCompatiblePath = Prelude.pure newValue, ..}
instance Property "S3SuffixPath" Delivery where
  type PropertyType "S3SuffixPath" Delivery = Value Prelude.Text
  set newValue Delivery {..}
    = Delivery {s3SuffixPath = Prelude.pure newValue, ..}
instance Property "Tags" Delivery where
  type PropertyType "Tags" Delivery = [Tag]
  set newValue Delivery {..}
    = Delivery {tags = Prelude.pure newValue, ..}