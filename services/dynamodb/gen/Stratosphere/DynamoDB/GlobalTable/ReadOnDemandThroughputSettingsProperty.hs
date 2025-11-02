module Stratosphere.DynamoDB.GlobalTable.ReadOnDemandThroughputSettingsProperty (
        ReadOnDemandThroughputSettingsProperty(..),
        mkReadOnDemandThroughputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReadOnDemandThroughputSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-readondemandthroughputsettings.html>
    ReadOnDemandThroughputSettingsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-readondemandthroughputsettings.html#cfn-dynamodb-globaltable-readondemandthroughputsettings-maxreadrequestunits>
                                            maxReadRequestUnits :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReadOnDemandThroughputSettingsProperty ::
  ReadOnDemandThroughputSettingsProperty
mkReadOnDemandThroughputSettingsProperty
  = ReadOnDemandThroughputSettingsProperty
      {haddock_workaround_ = (), maxReadRequestUnits = Prelude.Nothing}
instance ToResourceProperties ReadOnDemandThroughputSettingsProperty where
  toResourceProperties ReadOnDemandThroughputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.ReadOnDemandThroughputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxReadRequestUnits" Prelude.<$> maxReadRequestUnits])}
instance JSON.ToJSON ReadOnDemandThroughputSettingsProperty where
  toJSON ReadOnDemandThroughputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxReadRequestUnits" Prelude.<$> maxReadRequestUnits]))
instance Property "MaxReadRequestUnits" ReadOnDemandThroughputSettingsProperty where
  type PropertyType "MaxReadRequestUnits" ReadOnDemandThroughputSettingsProperty = Value Prelude.Integer
  set newValue ReadOnDemandThroughputSettingsProperty {..}
    = ReadOnDemandThroughputSettingsProperty
        {maxReadRequestUnits = Prelude.pure newValue, ..}