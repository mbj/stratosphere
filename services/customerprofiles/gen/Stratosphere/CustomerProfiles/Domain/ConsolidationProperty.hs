module Stratosphere.CustomerProfiles.Domain.ConsolidationProperty (
        ConsolidationProperty(..), mkConsolidationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ConsolidationProperty
  = ConsolidationProperty {matchingAttributesList :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConsolidationProperty :: JSON.Object -> ConsolidationProperty
mkConsolidationProperty matchingAttributesList
  = ConsolidationProperty
      {matchingAttributesList = matchingAttributesList}
instance ToResourceProperties ConsolidationProperty where
  toResourceProperties ConsolidationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.Consolidation",
         supportsTags = Prelude.False,
         properties = ["MatchingAttributesList"
                         JSON..= matchingAttributesList]}
instance JSON.ToJSON ConsolidationProperty where
  toJSON ConsolidationProperty {..}
    = JSON.object
        ["MatchingAttributesList" JSON..= matchingAttributesList]
instance Property "MatchingAttributesList" ConsolidationProperty where
  type PropertyType "MatchingAttributesList" ConsolidationProperty = JSON.Object
  set newValue ConsolidationProperty {}
    = ConsolidationProperty {matchingAttributesList = newValue, ..}