module Stratosphere.CustomerProfiles.Integration.TriggerConfigProperty (
        module Exports, TriggerConfigProperty(..), mkTriggerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.TriggerPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TriggerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-triggerconfig.html>
    TriggerConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-triggerconfig.html#cfn-customerprofiles-integration-triggerconfig-triggerproperties>
                           triggerProperties :: (Prelude.Maybe TriggerPropertiesProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-triggerconfig.html#cfn-customerprofiles-integration-triggerconfig-triggertype>
                           triggerType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTriggerConfigProperty ::
  Value Prelude.Text -> TriggerConfigProperty
mkTriggerConfigProperty triggerType
  = TriggerConfigProperty
      {haddock_workaround_ = (), triggerType = triggerType,
       triggerProperties = Prelude.Nothing}
instance ToResourceProperties TriggerConfigProperty where
  toResourceProperties TriggerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.TriggerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TriggerType" JSON..= triggerType]
                           (Prelude.catMaybes
                              [(JSON..=) "TriggerProperties" Prelude.<$> triggerProperties]))}
instance JSON.ToJSON TriggerConfigProperty where
  toJSON TriggerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TriggerType" JSON..= triggerType]
              (Prelude.catMaybes
                 [(JSON..=) "TriggerProperties" Prelude.<$> triggerProperties])))
instance Property "TriggerProperties" TriggerConfigProperty where
  type PropertyType "TriggerProperties" TriggerConfigProperty = TriggerPropertiesProperty
  set newValue TriggerConfigProperty {..}
    = TriggerConfigProperty
        {triggerProperties = Prelude.pure newValue, ..}
instance Property "TriggerType" TriggerConfigProperty where
  type PropertyType "TriggerType" TriggerConfigProperty = Value Prelude.Text
  set newValue TriggerConfigProperty {..}
    = TriggerConfigProperty {triggerType = newValue, ..}