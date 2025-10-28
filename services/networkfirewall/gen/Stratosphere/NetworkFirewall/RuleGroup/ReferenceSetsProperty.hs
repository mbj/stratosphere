module Stratosphere.NetworkFirewall.RuleGroup.ReferenceSetsProperty (
        module Exports, ReferenceSetsProperty(..), mkReferenceSetsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.IPSetReferenceProperty as Exports
import Stratosphere.ResourceProperties
data ReferenceSetsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-referencesets.html>
    ReferenceSetsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-referencesets.html#cfn-networkfirewall-rulegroup-referencesets-ipsetreferences>
                           iPSetReferences :: (Prelude.Maybe (Prelude.Map Prelude.Text IPSetReferenceProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceSetsProperty :: ReferenceSetsProperty
mkReferenceSetsProperty
  = ReferenceSetsProperty
      {haddock_workaround_ = (), iPSetReferences = Prelude.Nothing}
instance ToResourceProperties ReferenceSetsProperty where
  toResourceProperties ReferenceSetsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.ReferenceSets",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IPSetReferences" Prelude.<$> iPSetReferences])}
instance JSON.ToJSON ReferenceSetsProperty where
  toJSON ReferenceSetsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IPSetReferences" Prelude.<$> iPSetReferences]))
instance Property "IPSetReferences" ReferenceSetsProperty where
  type PropertyType "IPSetReferences" ReferenceSetsProperty = Prelude.Map Prelude.Text IPSetReferenceProperty
  set newValue ReferenceSetsProperty {..}
    = ReferenceSetsProperty
        {iPSetReferences = Prelude.pure newValue, ..}