module Stratosphere.NetworkFirewall.RuleGroup.IPSetReferenceProperty (
        IPSetReferenceProperty(..), mkIPSetReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSetReferenceProperty
  = IPSetReferenceProperty {referenceArn :: (Prelude.Maybe (Value Prelude.Text))}
mkIPSetReferenceProperty :: IPSetReferenceProperty
mkIPSetReferenceProperty
  = IPSetReferenceProperty {referenceArn = Prelude.Nothing}
instance ToResourceProperties IPSetReferenceProperty where
  toResourceProperties IPSetReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.IPSetReference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReferenceArn" Prelude.<$> referenceArn])}
instance JSON.ToJSON IPSetReferenceProperty where
  toJSON IPSetReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReferenceArn" Prelude.<$> referenceArn]))
instance Property "ReferenceArn" IPSetReferenceProperty where
  type PropertyType "ReferenceArn" IPSetReferenceProperty = Value Prelude.Text
  set newValue IPSetReferenceProperty {}
    = IPSetReferenceProperty {referenceArn = Prelude.pure newValue, ..}