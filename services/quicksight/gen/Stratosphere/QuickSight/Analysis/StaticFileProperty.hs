module Stratosphere.QuickSight.Analysis.StaticFileProperty (
        module Exports, StaticFileProperty(..), mkStaticFileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ImageStaticFileProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SpatialStaticFileProperty as Exports
import Stratosphere.ResourceProperties
data StaticFileProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-staticfile.html>
    StaticFileProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-staticfile.html#cfn-quicksight-analysis-staticfile-imagestaticfile>
                        imageStaticFile :: (Prelude.Maybe ImageStaticFileProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-staticfile.html#cfn-quicksight-analysis-staticfile-spatialstaticfile>
                        spatialStaticFile :: (Prelude.Maybe SpatialStaticFileProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStaticFileProperty :: StaticFileProperty
mkStaticFileProperty
  = StaticFileProperty
      {haddock_workaround_ = (), imageStaticFile = Prelude.Nothing,
       spatialStaticFile = Prelude.Nothing}
instance ToResourceProperties StaticFileProperty where
  toResourceProperties StaticFileProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.StaticFile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImageStaticFile" Prelude.<$> imageStaticFile,
                            (JSON..=) "SpatialStaticFile" Prelude.<$> spatialStaticFile])}
instance JSON.ToJSON StaticFileProperty where
  toJSON StaticFileProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImageStaticFile" Prelude.<$> imageStaticFile,
               (JSON..=) "SpatialStaticFile" Prelude.<$> spatialStaticFile]))
instance Property "ImageStaticFile" StaticFileProperty where
  type PropertyType "ImageStaticFile" StaticFileProperty = ImageStaticFileProperty
  set newValue StaticFileProperty {..}
    = StaticFileProperty {imageStaticFile = Prelude.pure newValue, ..}
instance Property "SpatialStaticFile" StaticFileProperty where
  type PropertyType "SpatialStaticFile" StaticFileProperty = SpatialStaticFileProperty
  set newValue StaticFileProperty {..}
    = StaticFileProperty
        {spatialStaticFile = Prelude.pure newValue, ..}