module Stratosphere.QuickSight.Dashboard.DefaultGridLayoutConfigurationProperty (
        module Exports, DefaultGridLayoutConfigurationProperty(..),
        mkDefaultGridLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GridLayoutCanvasSizeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DefaultGridLayoutConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultgridlayoutconfiguration.html>
    DefaultGridLayoutConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultgridlayoutconfiguration.html#cfn-quicksight-dashboard-defaultgridlayoutconfiguration-canvassizeoptions>
                                            canvasSizeOptions :: GridLayoutCanvasSizeOptionsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultGridLayoutConfigurationProperty ::
  GridLayoutCanvasSizeOptionsProperty
  -> DefaultGridLayoutConfigurationProperty
mkDefaultGridLayoutConfigurationProperty canvasSizeOptions
  = DefaultGridLayoutConfigurationProperty
      {haddock_workaround_ = (), canvasSizeOptions = canvasSizeOptions}
instance ToResourceProperties DefaultGridLayoutConfigurationProperty where
  toResourceProperties DefaultGridLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DefaultGridLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = ["CanvasSizeOptions" JSON..= canvasSizeOptions]}
instance JSON.ToJSON DefaultGridLayoutConfigurationProperty where
  toJSON DefaultGridLayoutConfigurationProperty {..}
    = JSON.object ["CanvasSizeOptions" JSON..= canvasSizeOptions]
instance Property "CanvasSizeOptions" DefaultGridLayoutConfigurationProperty where
  type PropertyType "CanvasSizeOptions" DefaultGridLayoutConfigurationProperty = GridLayoutCanvasSizeOptionsProperty
  set newValue DefaultGridLayoutConfigurationProperty {..}
    = DefaultGridLayoutConfigurationProperty
        {canvasSizeOptions = newValue, ..}