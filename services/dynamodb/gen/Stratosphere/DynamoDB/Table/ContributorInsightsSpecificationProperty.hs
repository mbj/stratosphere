module Stratosphere.DynamoDB.Table.ContributorInsightsSpecificationProperty (
        ContributorInsightsSpecificationProperty(..),
        mkContributorInsightsSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContributorInsightsSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-contributorinsightsspecification.html>
    ContributorInsightsSpecificationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-contributorinsightsspecification.html#cfn-dynamodb-table-contributorinsightsspecification-enabled>
                                              enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContributorInsightsSpecificationProperty ::
  Value Prelude.Bool -> ContributorInsightsSpecificationProperty
mkContributorInsightsSpecificationProperty enabled
  = ContributorInsightsSpecificationProperty
      {haddock_workaround_ = (), enabled = enabled}
instance ToResourceProperties ContributorInsightsSpecificationProperty where
  toResourceProperties ContributorInsightsSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.ContributorInsightsSpecification",
         supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON ContributorInsightsSpecificationProperty where
  toJSON ContributorInsightsSpecificationProperty {..}
    = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" ContributorInsightsSpecificationProperty where
  type PropertyType "Enabled" ContributorInsightsSpecificationProperty = Value Prelude.Bool
  set newValue ContributorInsightsSpecificationProperty {..}
    = ContributorInsightsSpecificationProperty {enabled = newValue, ..}