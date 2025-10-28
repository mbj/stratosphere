module Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.RecordColumnProperty (
        RecordColumnProperty(..), mkRecordColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordColumnProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html>
    RecordColumnProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalytics-applicationreferencedatasource-recordcolumn-mapping>
                          mapping :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalytics-applicationreferencedatasource-recordcolumn-name>
                          name :: (Value Prelude.Text),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalytics-applicationreferencedatasource-recordcolumn-sqltype>
                          sqlType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordColumnProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RecordColumnProperty
mkRecordColumnProperty name sqlType
  = RecordColumnProperty
      {name = name, sqlType = sqlType, mapping = Prelude.Nothing}
instance ToResourceProperties RecordColumnProperty where
  toResourceProperties RecordColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationReferenceDataSource.RecordColumn",
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