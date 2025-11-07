module Stratosphere.QuickSight.Analysis.InnerFilterProperty (
        module Exports, InnerFilterProperty(..), mkInnerFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CategoryInnerFilterProperty as Exports
import Stratosphere.ResourceProperties
data InnerFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-innerfilter.html>
    InnerFilterProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-innerfilter.html#cfn-quicksight-analysis-innerfilter-categoryinnerfilter>
                         categoryInnerFilter :: (Prelude.Maybe CategoryInnerFilterProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInnerFilterProperty :: InnerFilterProperty
mkInnerFilterProperty
  = InnerFilterProperty
      {haddock_workaround_ = (), categoryInnerFilter = Prelude.Nothing}
instance ToResourceProperties InnerFilterProperty where
  toResourceProperties InnerFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.InnerFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryInnerFilter" Prelude.<$> categoryInnerFilter])}
instance JSON.ToJSON InnerFilterProperty where
  toJSON InnerFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryInnerFilter" Prelude.<$> categoryInnerFilter]))
instance Property "CategoryInnerFilter" InnerFilterProperty where
  type PropertyType "CategoryInnerFilter" InnerFilterProperty = CategoryInnerFilterProperty
  set newValue InnerFilterProperty {..}
    = InnerFilterProperty
        {categoryInnerFilter = Prelude.pure newValue, ..}