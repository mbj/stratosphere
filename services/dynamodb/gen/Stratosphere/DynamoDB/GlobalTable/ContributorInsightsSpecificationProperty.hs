module Stratosphere.DynamoDB.GlobalTable.ContributorInsightsSpecificationProperty (
        ContributorInsightsSpecificationProperty(..),
        mkContributorInsightsSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContributorInsightsSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-contributorinsightsspecification.html>
    ContributorInsightsSpecificationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-contributorinsightsspecification.html#cfn-dynamodb-globaltable-contributorinsightsspecification-enabled>
                                              enabled :: (Value Prelude.Bool),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-contributorinsightsspecification.html#cfn-dynamodb-globaltable-contributorinsightsspecification-mode>
                                              mode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContributorInsightsSpecificationProperty ::
  Value Prelude.Bool -> ContributorInsightsSpecificationProperty
mkContributorInsightsSpecificationProperty enabled
  = ContributorInsightsSpecificationProperty
      {haddock_workaround_ = (), enabled = enabled,
       mode = Prelude.Nothing}
instance ToResourceProperties ContributorInsightsSpecificationProperty where
  toResourceProperties ContributorInsightsSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.ContributorInsightsSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes [(JSON..=) "Mode" Prelude.<$> mode]))}
instance JSON.ToJSON ContributorInsightsSpecificationProperty where
  toJSON ContributorInsightsSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes [(JSON..=) "Mode" Prelude.<$> mode])))
instance Property "Enabled" ContributorInsightsSpecificationProperty where
  type PropertyType "Enabled" ContributorInsightsSpecificationProperty = Value Prelude.Bool
  set newValue ContributorInsightsSpecificationProperty {..}
    = ContributorInsightsSpecificationProperty {enabled = newValue, ..}
instance Property "Mode" ContributorInsightsSpecificationProperty where
  type PropertyType "Mode" ContributorInsightsSpecificationProperty = Value Prelude.Text
  set newValue ContributorInsightsSpecificationProperty {..}
    = ContributorInsightsSpecificationProperty
        {mode = Prelude.pure newValue, ..}