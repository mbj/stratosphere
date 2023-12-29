module Stratosphere.VpcLattice.Rule.PathMatchProperty (
        module Exports, PathMatchProperty(..), mkPathMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.PathMatchTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PathMatchProperty
  = PathMatchProperty {caseSensitive :: (Prelude.Maybe (Value Prelude.Bool)),
                       match :: PathMatchTypeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPathMatchProperty :: PathMatchTypeProperty -> PathMatchProperty
mkPathMatchProperty match
  = PathMatchProperty
      {match = match, caseSensitive = Prelude.Nothing}
instance ToResourceProperties PathMatchProperty where
  toResourceProperties PathMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.PathMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Match" JSON..= match]
                           (Prelude.catMaybes
                              [(JSON..=) "CaseSensitive" Prelude.<$> caseSensitive]))}
instance JSON.ToJSON PathMatchProperty where
  toJSON PathMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Match" JSON..= match]
              (Prelude.catMaybes
                 [(JSON..=) "CaseSensitive" Prelude.<$> caseSensitive])))
instance Property "CaseSensitive" PathMatchProperty where
  type PropertyType "CaseSensitive" PathMatchProperty = Value Prelude.Bool
  set newValue PathMatchProperty {..}
    = PathMatchProperty {caseSensitive = Prelude.pure newValue, ..}
instance Property "Match" PathMatchProperty where
  type PropertyType "Match" PathMatchProperty = PathMatchTypeProperty
  set newValue PathMatchProperty {..}
    = PathMatchProperty {match = newValue, ..}