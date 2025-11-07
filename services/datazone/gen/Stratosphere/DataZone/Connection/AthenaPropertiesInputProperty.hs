module Stratosphere.DataZone.Connection.AthenaPropertiesInputProperty (
        AthenaPropertiesInputProperty(..), mkAthenaPropertiesInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AthenaPropertiesInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-athenapropertiesinput.html>
    AthenaPropertiesInputProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-athenapropertiesinput.html#cfn-datazone-connection-athenapropertiesinput-workgroupname>
                                   workgroupName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAthenaPropertiesInputProperty ::
  Value Prelude.Text -> AthenaPropertiesInputProperty
mkAthenaPropertiesInputProperty workgroupName
  = AthenaPropertiesInputProperty
      {haddock_workaround_ = (), workgroupName = workgroupName}
instance ToResourceProperties AthenaPropertiesInputProperty where
  toResourceProperties AthenaPropertiesInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.AthenaPropertiesInput",
         supportsTags = Prelude.False,
         properties = ["WorkgroupName" JSON..= workgroupName]}
instance JSON.ToJSON AthenaPropertiesInputProperty where
  toJSON AthenaPropertiesInputProperty {..}
    = JSON.object ["WorkgroupName" JSON..= workgroupName]
instance Property "WorkgroupName" AthenaPropertiesInputProperty where
  type PropertyType "WorkgroupName" AthenaPropertiesInputProperty = Value Prelude.Text
  set newValue AthenaPropertiesInputProperty {..}
    = AthenaPropertiesInputProperty {workgroupName = newValue, ..}