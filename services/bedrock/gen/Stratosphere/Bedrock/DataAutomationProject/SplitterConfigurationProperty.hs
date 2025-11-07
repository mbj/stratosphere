module Stratosphere.Bedrock.DataAutomationProject.SplitterConfigurationProperty (
        SplitterConfigurationProperty(..), mkSplitterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SplitterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-splitterconfiguration.html>
    SplitterConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-splitterconfiguration.html#cfn-bedrock-dataautomationproject-splitterconfiguration-state>
                                   state :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSplitterConfigurationProperty :: SplitterConfigurationProperty
mkSplitterConfigurationProperty
  = SplitterConfigurationProperty
      {haddock_workaround_ = (), state = Prelude.Nothing}
instance ToResourceProperties SplitterConfigurationProperty where
  toResourceProperties SplitterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.SplitterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON SplitterConfigurationProperty where
  toJSON SplitterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state]))
instance Property "State" SplitterConfigurationProperty where
  type PropertyType "State" SplitterConfigurationProperty = Value Prelude.Text
  set newValue SplitterConfigurationProperty {..}
    = SplitterConfigurationProperty {state = Prelude.pure newValue, ..}