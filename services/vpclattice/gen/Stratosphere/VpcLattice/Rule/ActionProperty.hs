module Stratosphere.VpcLattice.Rule.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.FixedResponseProperty as Exports
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.ForwardProperty as Exports
import Stratosphere.ResourceProperties
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-action.html#cfn-vpclattice-rule-action-fixedresponse>
                    fixedResponse :: (Prelude.Maybe FixedResponseProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-action.html#cfn-vpclattice-rule-action-forward>
                    forward :: (Prelude.Maybe ForwardProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: ActionProperty
mkActionProperty
  = ActionProperty
      {haddock_workaround_ = (), fixedResponse = Prelude.Nothing,
       forward = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FixedResponse" Prelude.<$> fixedResponse,
                            (JSON..=) "Forward" Prelude.<$> forward])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FixedResponse" Prelude.<$> fixedResponse,
               (JSON..=) "Forward" Prelude.<$> forward]))
instance Property "FixedResponse" ActionProperty where
  type PropertyType "FixedResponse" ActionProperty = FixedResponseProperty
  set newValue ActionProperty {..}
    = ActionProperty {fixedResponse = Prelude.pure newValue, ..}
instance Property "Forward" ActionProperty where
  type PropertyType "Forward" ActionProperty = ForwardProperty
  set newValue ActionProperty {..}
    = ActionProperty {forward = Prelude.pure newValue, ..}