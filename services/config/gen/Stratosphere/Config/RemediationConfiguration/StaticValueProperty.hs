module Stratosphere.Config.RemediationConfiguration.StaticValueProperty (
        StaticValueProperty(..), mkStaticValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StaticValueProperty
  = StaticValueProperty {values :: (Prelude.Maybe (ValueList Prelude.Text))}
mkStaticValueProperty :: StaticValueProperty
mkStaticValueProperty
  = StaticValueProperty {values = Prelude.Nothing}
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
  set newValue StaticValueProperty {}
    = StaticValueProperty {values = Prelude.pure newValue, ..}