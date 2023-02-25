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
  = SizeConstraintSet {name :: (Value Prelude.Text),
                       sizeConstraints :: [SizeConstraintProperty]}
mkSizeConstraintSet ::
  Value Prelude.Text -> [SizeConstraintProperty] -> SizeConstraintSet
mkSizeConstraintSet name sizeConstraints
  = SizeConstraintSet
      {name = name, sizeConstraints = sizeConstraints}
instance ToResourceProperties SizeConstraintSet where
  toResourceProperties SizeConstraintSet {..}
    = ResourceProperties
        {awsType = "AWS::WAF::SizeConstraintSet",
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