module Stratosphere.SecurityHub.AutomationRule.SeverityUpdateProperty (
        SeverityUpdateProperty(..), mkSeverityUpdateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SeverityUpdateProperty
  = SeverityUpdateProperty {label :: (Prelude.Maybe (Value Prelude.Text)),
                            normalized :: (Prelude.Maybe (Value Prelude.Integer)),
                            product :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSeverityUpdateProperty :: SeverityUpdateProperty
mkSeverityUpdateProperty
  = SeverityUpdateProperty
      {label = Prelude.Nothing, normalized = Prelude.Nothing,
       product = Prelude.Nothing}
instance ToResourceProperties SeverityUpdateProperty where
  toResourceProperties SeverityUpdateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRule.SeverityUpdate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Label" Prelude.<$> label,
                            (JSON..=) "Normalized" Prelude.<$> normalized,
                            (JSON..=) "Product" Prelude.<$> product])}
instance JSON.ToJSON SeverityUpdateProperty where
  toJSON SeverityUpdateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Label" Prelude.<$> label,
               (JSON..=) "Normalized" Prelude.<$> normalized,
               (JSON..=) "Product" Prelude.<$> product]))
instance Property "Label" SeverityUpdateProperty where
  type PropertyType "Label" SeverityUpdateProperty = Value Prelude.Text
  set newValue SeverityUpdateProperty {..}
    = SeverityUpdateProperty {label = Prelude.pure newValue, ..}
instance Property "Normalized" SeverityUpdateProperty where
  type PropertyType "Normalized" SeverityUpdateProperty = Value Prelude.Integer
  set newValue SeverityUpdateProperty {..}
    = SeverityUpdateProperty {normalized = Prelude.pure newValue, ..}
instance Property "Product" SeverityUpdateProperty where
  type PropertyType "Product" SeverityUpdateProperty = Value Prelude.Double
  set newValue SeverityUpdateProperty {..}
    = SeverityUpdateProperty {product = Prelude.pure newValue, ..}