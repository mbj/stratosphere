module Stratosphere.QuickSight.Analysis.DonutOptionsProperty (
        module Exports, DonutOptionsProperty(..), mkDonutOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ArcOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DonutCenterOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DonutOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-donutoptions.html>
    DonutOptionsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-donutoptions.html#cfn-quicksight-analysis-donutoptions-arcoptions>
                          arcOptions :: (Prelude.Maybe ArcOptionsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-donutoptions.html#cfn-quicksight-analysis-donutoptions-donutcenteroptions>
                          donutCenterOptions :: (Prelude.Maybe DonutCenterOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDonutOptionsProperty :: DonutOptionsProperty
mkDonutOptionsProperty
  = DonutOptionsProperty
      {haddock_workaround_ = (), arcOptions = Prelude.Nothing,
       donutCenterOptions = Prelude.Nothing}
instance ToResourceProperties DonutOptionsProperty where
  toResourceProperties DonutOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DonutOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArcOptions" Prelude.<$> arcOptions,
                            (JSON..=) "DonutCenterOptions" Prelude.<$> donutCenterOptions])}
instance JSON.ToJSON DonutOptionsProperty where
  toJSON DonutOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArcOptions" Prelude.<$> arcOptions,
               (JSON..=) "DonutCenterOptions" Prelude.<$> donutCenterOptions]))
instance Property "ArcOptions" DonutOptionsProperty where
  type PropertyType "ArcOptions" DonutOptionsProperty = ArcOptionsProperty
  set newValue DonutOptionsProperty {..}
    = DonutOptionsProperty {arcOptions = Prelude.pure newValue, ..}
instance Property "DonutCenterOptions" DonutOptionsProperty where
  type PropertyType "DonutCenterOptions" DonutOptionsProperty = DonutCenterOptionsProperty
  set newValue DonutOptionsProperty {..}
    = DonutOptionsProperty
        {donutCenterOptions = Prelude.pure newValue, ..}