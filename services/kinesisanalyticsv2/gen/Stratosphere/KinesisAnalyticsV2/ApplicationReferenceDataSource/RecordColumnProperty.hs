module Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.RecordColumnProperty (
        RecordColumnProperty(..), mkRecordColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordColumnProperty
  = RecordColumnProperty {mapping :: (Prelude.Maybe (Value Prelude.Text)),
                          name :: (Value Prelude.Text),
                          sqlType :: (Value Prelude.Text)}
mkRecordColumnProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RecordColumnProperty
mkRecordColumnProperty name sqlType
  = RecordColumnProperty
      {name = name, sqlType = sqlType, mapping = Prelude.Nothing}
instance ToResourceProperties RecordColumnProperty where
  toResourceProperties RecordColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.RecordColumn",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "SqlType" JSON..= sqlType]
                           (Prelude.catMaybes [(JSON..=) "Mapping" Prelude.<$> mapping]))}
instance JSON.ToJSON RecordColumnProperty where
  toJSON RecordColumnProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "SqlType" JSON..= sqlType]
              (Prelude.catMaybes [(JSON..=) "Mapping" Prelude.<$> mapping])))
instance Property "Mapping" RecordColumnProperty where
  type PropertyType "Mapping" RecordColumnProperty = Value Prelude.Text
  set newValue RecordColumnProperty {..}
    = RecordColumnProperty {mapping = Prelude.pure newValue, ..}
instance Property "Name" RecordColumnProperty where
  type PropertyType "Name" RecordColumnProperty = Value Prelude.Text
  set newValue RecordColumnProperty {..}
    = RecordColumnProperty {name = newValue, ..}
instance Property "SqlType" RecordColumnProperty where
  type PropertyType "SqlType" RecordColumnProperty = Value Prelude.Text
  set newValue RecordColumnProperty {..}
    = RecordColumnProperty {sqlType = newValue, ..}