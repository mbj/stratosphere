module Stratosphere.IoTAnalytics.Datastore.ColumnProperty (
        ColumnProperty(..), mkColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-column.html>
    ColumnProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-column.html#cfn-iotanalytics-datastore-column-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-column.html#cfn-iotanalytics-datastore-column-type>
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ColumnProperty
mkColumnProperty name type'
  = ColumnProperty
      {haddock_workaround_ = (), name = name, type' = type'}
instance ToResourceProperties ColumnProperty where
  toResourceProperties ColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.Column",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Type" JSON..= type']}
instance JSON.ToJSON ColumnProperty where
  toJSON ColumnProperty {..}
    = JSON.object ["Name" JSON..= name, "Type" JSON..= type']
instance Property "Name" ColumnProperty where
  type PropertyType "Name" ColumnProperty = Value Prelude.Text
  set newValue ColumnProperty {..}
    = ColumnProperty {name = newValue, ..}
instance Property "Type" ColumnProperty where
  type PropertyType "Type" ColumnProperty = Value Prelude.Text
  set newValue ColumnProperty {..}
    = ColumnProperty {type' = newValue, ..}