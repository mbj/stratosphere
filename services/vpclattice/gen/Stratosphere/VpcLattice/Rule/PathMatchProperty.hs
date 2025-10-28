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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-pathmatch.html>
    PathMatchProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-pathmatch.html#cfn-vpclattice-rule-pathmatch-casesensitive>
                       caseSensitive :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-pathmatch.html#cfn-vpclattice-rule-pathmatch-match>
                       match :: PathMatchTypeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPathMatchProperty :: PathMatchTypeProperty -> PathMatchProperty
mkPathMatchProperty match
  = PathMatchProperty
      {haddock_workaround_ = (), match = match,
       caseSensitive = Prelude.Nothing}
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