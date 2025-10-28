module Stratosphere.CustomerProfiles.Domain.ConsolidationProperty (
        ConsolidationProperty(..), mkConsolidationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ConsolidationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-consolidation.html>
    ConsolidationProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-consolidation.html#cfn-customerprofiles-domain-consolidation-matchingattributeslist>
                           matchingAttributesList :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConsolidationProperty :: JSON.Object -> ConsolidationProperty
mkConsolidationProperty matchingAttributesList
  = ConsolidationProperty
      {haddock_workaround_ = (),
       matchingAttributesList = matchingAttributesList}
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
  set newValue ConsolidationProperty {..}
    = ConsolidationProperty {matchingAttributesList = newValue, ..}