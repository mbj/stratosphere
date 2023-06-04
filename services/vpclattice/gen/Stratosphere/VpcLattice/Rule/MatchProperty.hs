module Stratosphere.VpcLattice.Rule.MatchProperty (
        module Exports, MatchProperty(..), mkMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.HttpMatchProperty as Exports
import Stratosphere.ResourceProperties
data MatchProperty = MatchProperty {httpMatch :: HttpMatchProperty}
mkMatchProperty :: HttpMatchProperty -> MatchProperty
mkMatchProperty httpMatch = MatchProperty {httpMatch = httpMatch}
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
  set newValue MatchProperty {}
    = MatchProperty {httpMatch = newValue, ..}