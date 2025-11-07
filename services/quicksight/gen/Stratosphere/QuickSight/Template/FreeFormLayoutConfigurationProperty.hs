module Stratosphere.QuickSight.Template.FreeFormLayoutConfigurationProperty (
        module Exports, FreeFormLayoutConfigurationProperty(..),
        mkFreeFormLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FreeFormLayoutCanvasSizeOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FreeFormLayoutElementProperty as Exports
import Stratosphere.ResourceProperties
data FreeFormLayoutConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutconfiguration.html>
    FreeFormLayoutConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutconfiguration.html#cfn-quicksight-template-freeformlayoutconfiguration-canvassizeoptions>
                                         canvasSizeOptions :: (Prelude.Maybe FreeFormLayoutCanvasSizeOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutconfiguration.html#cfn-quicksight-template-freeformlayoutconfiguration-elements>
                                         elements :: [FreeFormLayoutElementProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFreeFormLayoutConfigurationProperty ::
  [FreeFormLayoutElementProperty]
  -> FreeFormLayoutConfigurationProperty
mkFreeFormLayoutConfigurationProperty elements
  = FreeFormLayoutConfigurationProperty
      {haddock_workaround_ = (), elements = elements,
       canvasSizeOptions = Prelude.Nothing}
instance ToResourceProperties FreeFormLayoutConfigurationProperty where
  toResourceProperties FreeFormLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FreeFormLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Elements" JSON..= elements]
                           (Prelude.catMaybes
                              [(JSON..=) "CanvasSizeOptions" Prelude.<$> canvasSizeOptions]))}
instance JSON.ToJSON FreeFormLayoutConfigurationProperty where
  toJSON FreeFormLayoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Elements" JSON..= elements]
              (Prelude.catMaybes
                 [(JSON..=) "CanvasSizeOptions" Prelude.<$> canvasSizeOptions])))
instance Property "CanvasSizeOptions" FreeFormLayoutConfigurationProperty where
  type PropertyType "CanvasSizeOptions" FreeFormLayoutConfigurationProperty = FreeFormLayoutCanvasSizeOptionsProperty
  set newValue FreeFormLayoutConfigurationProperty {..}
    = FreeFormLayoutConfigurationProperty
        {canvasSizeOptions = Prelude.pure newValue, ..}
instance Property "Elements" FreeFormLayoutConfigurationProperty where
  type PropertyType "Elements" FreeFormLayoutConfigurationProperty = [FreeFormLayoutElementProperty]
  set newValue FreeFormLayoutConfigurationProperty {..}
    = FreeFormLayoutConfigurationProperty {elements = newValue, ..}