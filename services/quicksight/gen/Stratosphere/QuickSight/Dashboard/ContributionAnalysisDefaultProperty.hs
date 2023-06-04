module Stratosphere.QuickSight.Dashboard.ContributionAnalysisDefaultProperty (
        module Exports, ContributionAnalysisDefaultProperty(..),
        mkContributionAnalysisDefaultProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContributionAnalysisDefaultProperty
  = ContributionAnalysisDefaultProperty {contributorDimensions :: [ColumnIdentifierProperty],
                                         measureFieldId :: (Value Prelude.Text)}
mkContributionAnalysisDefaultProperty ::
  [ColumnIdentifierProperty]
  -> Value Prelude.Text -> ContributionAnalysisDefaultProperty
mkContributionAnalysisDefaultProperty
  contributorDimensions
  measureFieldId
  = ContributionAnalysisDefaultProperty
      {contributorDimensions = contributorDimensions,
       measureFieldId = measureFieldId}
instance ToResourceProperties ContributionAnalysisDefaultProperty where
  toResourceProperties ContributionAnalysisDefaultProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ContributionAnalysisDefault",
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