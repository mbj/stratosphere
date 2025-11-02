module Stratosphere.VpcLattice.Rule.HeaderMatchProperty (
        module Exports, HeaderMatchProperty(..), mkHeaderMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.HeaderMatchTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-headermatch.html>
    HeaderMatchProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-headermatch.html#cfn-vpclattice-rule-headermatch-casesensitive>
                         caseSensitive :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-headermatch.html#cfn-vpclattice-rule-headermatch-match>
                         match :: HeaderMatchTypeProperty,
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-headermatch.html#cfn-vpclattice-rule-headermatch-name>
                         name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeaderMatchProperty ::
  HeaderMatchTypeProperty
  -> Value Prelude.Text -> HeaderMatchProperty
mkHeaderMatchProperty match name
  = HeaderMatchProperty
      {haddock_workaround_ = (), match = match, name = name,
       caseSensitive = Prelude.Nothing}
instance ToResourceProperties HeaderMatchProperty where
  toResourceProperties HeaderMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.HeaderMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Match" JSON..= match, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CaseSensitive" Prelude.<$> caseSensitive]))}
instance JSON.ToJSON HeaderMatchProperty where
  toJSON HeaderMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Match" JSON..= match, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CaseSensitive" Prelude.<$> caseSensitive])))
instance Property "CaseSensitive" HeaderMatchProperty where
  type PropertyType "CaseSensitive" HeaderMatchProperty = Value Prelude.Bool
  set newValue HeaderMatchProperty {..}
    = HeaderMatchProperty {caseSensitive = Prelude.pure newValue, ..}
instance Property "Match" HeaderMatchProperty where
  type PropertyType "Match" HeaderMatchProperty = HeaderMatchTypeProperty
  set newValue HeaderMatchProperty {..}
    = HeaderMatchProperty {match = newValue, ..}
instance Property "Name" HeaderMatchProperty where
  type PropertyType "Name" HeaderMatchProperty = Value Prelude.Text
  set newValue HeaderMatchProperty {..}
    = HeaderMatchProperty {name = newValue, ..}