module Stratosphere.SSMQuickSetup.LifecycleAutomation (
        LifecycleAutomation(..), mkLifecycleAutomation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LifecycleAutomation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmquicksetup-lifecycleautomation.html>
    LifecycleAutomation {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmquicksetup-lifecycleautomation.html#cfn-ssmquicksetup-lifecycleautomation-automationdocument>
                         automationDocument :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmquicksetup-lifecycleautomation.html#cfn-ssmquicksetup-lifecycleautomation-automationparameters>
                         automationParameters :: JSON.Object,
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmquicksetup-lifecycleautomation.html#cfn-ssmquicksetup-lifecycleautomation-resourcekey>
                         resourceKey :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmquicksetup-lifecycleautomation.html#cfn-ssmquicksetup-lifecycleautomation-tags>
                         tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecycleAutomation ::
  Value Prelude.Text
  -> JSON.Object -> Value Prelude.Text -> LifecycleAutomation
mkLifecycleAutomation
  automationDocument
  automationParameters
  resourceKey
  = LifecycleAutomation
      {haddock_workaround_ = (), automationDocument = automationDocument,
       automationParameters = automationParameters,
       resourceKey = resourceKey, tags = Prelude.Nothing}
instance ToResourceProperties LifecycleAutomation where
  toResourceProperties LifecycleAutomation {..}
    = ResourceProperties
        {awsType = "AWS::SSMQuickSetup::LifecycleAutomation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutomationDocument" JSON..= automationDocument,
                            "AutomationParameters" JSON..= automationParameters,
                            "ResourceKey" JSON..= resourceKey]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LifecycleAutomation where
  toJSON LifecycleAutomation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutomationDocument" JSON..= automationDocument,
               "AutomationParameters" JSON..= automationParameters,
               "ResourceKey" JSON..= resourceKey]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AutomationDocument" LifecycleAutomation where
  type PropertyType "AutomationDocument" LifecycleAutomation = Value Prelude.Text
  set newValue LifecycleAutomation {..}
    = LifecycleAutomation {automationDocument = newValue, ..}
instance Property "AutomationParameters" LifecycleAutomation where
  type PropertyType "AutomationParameters" LifecycleAutomation = JSON.Object
  set newValue LifecycleAutomation {..}
    = LifecycleAutomation {automationParameters = newValue, ..}
instance Property "ResourceKey" LifecycleAutomation where
  type PropertyType "ResourceKey" LifecycleAutomation = Value Prelude.Text
  set newValue LifecycleAutomation {..}
    = LifecycleAutomation {resourceKey = newValue, ..}
instance Property "Tags" LifecycleAutomation where
  type PropertyType "Tags" LifecycleAutomation = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue LifecycleAutomation {..}
    = LifecycleAutomation {tags = Prelude.pure newValue, ..}