module Stratosphere.WAF.SizeConstraintSet (
        module Exports, SizeConstraintSet(..), mkSizeConstraintSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAF.SizeConstraintSet.SizeConstraintProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SizeConstraintSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sizeconstraintset.html>
    SizeConstraintSet {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sizeconstraintset.html#cfn-waf-sizeconstraintset-name>
                       name :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sizeconstraintset.html#cfn-waf-sizeconstraintset-sizeconstraints>
                       sizeConstraints :: [SizeConstraintProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSizeConstraintSet ::
  Value Prelude.Text -> [SizeConstraintProperty] -> SizeConstraintSet
mkSizeConstraintSet name sizeConstraints
  = SizeConstraintSet
      {haddock_workaround_ = (), name = name,
       sizeConstraints = sizeConstraints}
instance ToResourceProperties SizeConstraintSet where
  toResourceProperties SizeConstraintSet {..}
    = ResourceProperties
        {awsType = "AWS::WAF::SizeConstraintSet",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "SizeConstraints" JSON..= sizeConstraints]}
instance JSON.ToJSON SizeConstraintSet where
  toJSON SizeConstraintSet {..}
    = JSON.object
        ["Name" JSON..= name, "SizeConstraints" JSON..= sizeConstraints]
instance Property "Name" SizeConstraintSet where
  type PropertyType "Name" SizeConstraintSet = Value Prelude.Text
  set newValue SizeConstraintSet {..}
    = SizeConstraintSet {name = newValue, ..}
instance Property "SizeConstraints" SizeConstraintSet where
  type PropertyType "SizeConstraints" SizeConstraintSet = [SizeConstraintProperty]
  set newValue SizeConstraintSet {..}
    = SizeConstraintSet {sizeConstraints = newValue, ..}