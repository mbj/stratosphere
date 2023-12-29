module Stratosphere.VpcLattice.Rule.ForwardProperty (
        module Exports, ForwardProperty(..), mkForwardProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.WeightedTargetGroupProperty as Exports
import Stratosphere.ResourceProperties
data ForwardProperty
  = ForwardProperty {targetGroups :: [WeightedTargetGroupProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkForwardProperty ::
  [WeightedTargetGroupProperty] -> ForwardProperty
mkForwardProperty targetGroups
  = ForwardProperty {targetGroups = targetGroups}
instance ToResourceProperties ForwardProperty where
  toResourceProperties ForwardProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.Forward",
         supportsTags = Prelude.False,
         properties = ["TargetGroups" JSON..= targetGroups]}
instance JSON.ToJSON ForwardProperty where
  toJSON ForwardProperty {..}
    = JSON.object ["TargetGroups" JSON..= targetGroups]
instance Property "TargetGroups" ForwardProperty where
  type PropertyType "TargetGroups" ForwardProperty = [WeightedTargetGroupProperty]
  set newValue ForwardProperty {}
    = ForwardProperty {targetGroups = newValue, ..}