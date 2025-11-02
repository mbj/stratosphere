module Stratosphere.DynamoDB.GlobalTable.WriteOnDemandThroughputSettingsProperty (
        WriteOnDemandThroughputSettingsProperty(..),
        mkWriteOnDemandThroughputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WriteOnDemandThroughputSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-writeondemandthroughputsettings.html>
    WriteOnDemandThroughputSettingsProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-writeondemandthroughputsettings.html#cfn-dynamodb-globaltable-writeondemandthroughputsettings-maxwriterequestunits>
                                             maxWriteRequestUnits :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWriteOnDemandThroughputSettingsProperty ::
  WriteOnDemandThroughputSettingsProperty
mkWriteOnDemandThroughputSettingsProperty
  = WriteOnDemandThroughputSettingsProperty
      {haddock_workaround_ = (), maxWriteRequestUnits = Prelude.Nothing}
instance ToResourceProperties WriteOnDemandThroughputSettingsProperty where
  toResourceProperties WriteOnDemandThroughputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.WriteOnDemandThroughputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxWriteRequestUnits"
                              Prelude.<$> maxWriteRequestUnits])}
instance JSON.ToJSON WriteOnDemandThroughputSettingsProperty where
  toJSON WriteOnDemandThroughputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxWriteRequestUnits"
                 Prelude.<$> maxWriteRequestUnits]))
instance Property "MaxWriteRequestUnits" WriteOnDemandThroughputSettingsProperty where
  type PropertyType "MaxWriteRequestUnits" WriteOnDemandThroughputSettingsProperty = Value Prelude.Integer
  set newValue WriteOnDemandThroughputSettingsProperty {..}
    = WriteOnDemandThroughputSettingsProperty
        {maxWriteRequestUnits = Prelude.pure newValue, ..}