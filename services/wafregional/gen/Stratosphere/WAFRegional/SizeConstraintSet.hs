module Stratosphere.WAFRegional.SizeConstraintSet (
        module Exports, SizeConstraintSet(..), mkSizeConstraintSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.SizeConstraintSet.SizeConstraintProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SizeConstraintSet
  = SizeConstraintSet {name :: (Value Prelude.Text),
                       sizeConstraints :: (Prelude.Maybe [SizeConstraintProperty])}
mkSizeConstraintSet :: Value Prelude.Text -> SizeConstraintSet
mkSizeConstraintSet name
  = SizeConstraintSet
      {name = name, sizeConstraints = Prelude.Nothing}
instance ToResourceProperties SizeConstraintSet where
  toResourceProperties SizeConstraintSet {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::SizeConstraintSet",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "SizeConstraints" Prelude.<$> sizeConstraints]))}
instance JSON.ToJSON SizeConstraintSet where
  toJSON SizeConstraintSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "SizeConstraints" Prelude.<$> sizeConstraints])))
instance Property "Name" SizeConstraintSet where
  type PropertyType "Name" SizeConstraintSet = Value Prelude.Text
  set newValue SizeConstraintSet {..}
    = SizeConstraintSet {name = newValue, ..}
instance Property "SizeConstraints" SizeConstraintSet where
  type PropertyType "SizeConstraints" SizeConstraintSet = [SizeConstraintProperty]
  set newValue SizeConstraintSet {..}
    = SizeConstraintSet {sizeConstraints = Prelude.pure newValue, ..}