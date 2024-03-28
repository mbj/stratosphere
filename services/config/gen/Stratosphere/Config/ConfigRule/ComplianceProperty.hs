module Stratosphere.Config.ConfigRule.ComplianceProperty (
        ComplianceProperty(..), mkComplianceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComplianceProperty
  = ComplianceProperty {type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComplianceProperty :: ComplianceProperty
mkComplianceProperty = ComplianceProperty {type' = Prelude.Nothing}
instance ToResourceProperties ComplianceProperty where
  toResourceProperties ComplianceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigRule.Compliance",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ComplianceProperty where
  toJSON ComplianceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))
instance Property "Type" ComplianceProperty where
  type PropertyType "Type" ComplianceProperty = Value Prelude.Text
  set newValue ComplianceProperty {}
    = ComplianceProperty {type' = Prelude.pure newValue, ..}