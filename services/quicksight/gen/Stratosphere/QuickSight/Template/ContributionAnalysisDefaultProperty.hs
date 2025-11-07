module Stratosphere.QuickSight.Template.ContributionAnalysisDefaultProperty (
        module Exports, ContributionAnalysisDefaultProperty(..),
        mkContributionAnalysisDefaultProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContributionAnalysisDefaultProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-contributionanalysisdefault.html>
    ContributionAnalysisDefaultProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-contributionanalysisdefault.html#cfn-quicksight-template-contributionanalysisdefault-contributordimensions>
                                         contributorDimensions :: [ColumnIdentifierProperty],
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-contributionanalysisdefault.html#cfn-quicksight-template-contributionanalysisdefault-measurefieldid>
                                         measureFieldId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContributionAnalysisDefaultProperty ::
  [ColumnIdentifierProperty]
  -> Value Prelude.Text -> ContributionAnalysisDefaultProperty
mkContributionAnalysisDefaultProperty
  contributorDimensions
  measureFieldId
  = ContributionAnalysisDefaultProperty
      {haddock_workaround_ = (),
       contributorDimensions = contributorDimensions,
       measureFieldId = measureFieldId}
instance ToResourceProperties ContributionAnalysisDefaultProperty where
  toResourceProperties ContributionAnalysisDefaultProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ContributionAnalysisDefault",
         supportsTags = Prelude.False,
         properties = ["ContributorDimensions"
                         JSON..= contributorDimensions,
                       "MeasureFieldId" JSON..= measureFieldId]}
instance JSON.ToJSON ContributionAnalysisDefaultProperty where
  toJSON ContributionAnalysisDefaultProperty {..}
    = JSON.object
        ["ContributorDimensions" JSON..= contributorDimensions,
         "MeasureFieldId" JSON..= measureFieldId]
instance Property "ContributorDimensions" ContributionAnalysisDefaultProperty where
  type PropertyType "ContributorDimensions" ContributionAnalysisDefaultProperty = [ColumnIdentifierProperty]
  set newValue ContributionAnalysisDefaultProperty {..}
    = ContributionAnalysisDefaultProperty
        {contributorDimensions = newValue, ..}
instance Property "MeasureFieldId" ContributionAnalysisDefaultProperty where
  type PropertyType "MeasureFieldId" ContributionAnalysisDefaultProperty = Value Prelude.Text
  set newValue ContributionAnalysisDefaultProperty {..}
    = ContributionAnalysisDefaultProperty
        {measureFieldId = newValue, ..}