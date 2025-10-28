module Stratosphere.VpcLattice.Rule.MatchProperty (
        module Exports, MatchProperty(..), mkMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.HttpMatchProperty as Exports
import Stratosphere.ResourceProperties
data MatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-match.html>
    MatchProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-match.html#cfn-vpclattice-rule-match-httpmatch>
                   httpMatch :: HttpMatchProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchProperty :: HttpMatchProperty -> MatchProperty
mkMatchProperty httpMatch
  = MatchProperty {haddock_workaround_ = (), httpMatch = httpMatch}
instance ToResourceProperties MatchProperty where
  toResourceProperties MatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.Match",
         supportsTags = Prelude.False,
         properties = ["HttpMatch" JSON..= httpMatch]}
instance JSON.ToJSON MatchProperty where
  toJSON MatchProperty {..}
    = JSON.object ["HttpMatch" JSON..= httpMatch]
instance Property "HttpMatch" MatchProperty where
  type PropertyType "HttpMatch" MatchProperty = HttpMatchProperty
  set newValue MatchProperty {..}
    = MatchProperty {httpMatch = newValue, ..}