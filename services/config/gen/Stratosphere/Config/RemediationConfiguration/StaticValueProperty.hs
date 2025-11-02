module Stratosphere.Config.RemediationConfiguration.StaticValueProperty (
        StaticValueProperty(..), mkStaticValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StaticValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-staticvalue.html>
    StaticValueProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-staticvalue.html#cfn-config-remediationconfiguration-staticvalue-values>
                         values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStaticValueProperty :: StaticValueProperty
mkStaticValueProperty
  = StaticValueProperty
      {haddock_workaround_ = (), values = Prelude.Nothing}
instance ToResourceProperties StaticValueProperty where
  toResourceProperties StaticValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::RemediationConfiguration.StaticValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON StaticValueProperty where
  toJSON StaticValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))
instance Property "Values" StaticValueProperty where
  type PropertyType "Values" StaticValueProperty = ValueList Prelude.Text
  set newValue StaticValueProperty {..}
    = StaticValueProperty {values = Prelude.pure newValue, ..}