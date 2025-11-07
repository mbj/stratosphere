module Stratosphere.QuickSight.Analysis.CustomContentConfigurationProperty (
        module Exports, CustomContentConfigurationProperty(..),
        mkCustomContentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualInteractionOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomContentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentconfiguration.html>
    CustomContentConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentconfiguration.html#cfn-quicksight-analysis-customcontentconfiguration-contenttype>
                                        contentType :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentconfiguration.html#cfn-quicksight-analysis-customcontentconfiguration-contenturl>
                                        contentUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentconfiguration.html#cfn-quicksight-analysis-customcontentconfiguration-imagescaling>
                                        imageScaling :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentconfiguration.html#cfn-quicksight-analysis-customcontentconfiguration-interactions>
                                        interactions :: (Prelude.Maybe VisualInteractionOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomContentConfigurationProperty ::
  CustomContentConfigurationProperty
mkCustomContentConfigurationProperty
  = CustomContentConfigurationProperty
      {haddock_workaround_ = (), contentType = Prelude.Nothing,
       contentUrl = Prelude.Nothing, imageScaling = Prelude.Nothing,
       interactions = Prelude.Nothing}
instance ToResourceProperties CustomContentConfigurationProperty where
  toResourceProperties CustomContentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.CustomContentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContentType" Prelude.<$> contentType,
                            (JSON..=) "ContentUrl" Prelude.<$> contentUrl,
                            (JSON..=) "ImageScaling" Prelude.<$> imageScaling,
                            (JSON..=) "Interactions" Prelude.<$> interactions])}
instance JSON.ToJSON CustomContentConfigurationProperty where
  toJSON CustomContentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContentType" Prelude.<$> contentType,
               (JSON..=) "ContentUrl" Prelude.<$> contentUrl,
               (JSON..=) "ImageScaling" Prelude.<$> imageScaling,
               (JSON..=) "Interactions" Prelude.<$> interactions]))
instance Property "ContentType" CustomContentConfigurationProperty where
  type PropertyType "ContentType" CustomContentConfigurationProperty = Value Prelude.Text
  set newValue CustomContentConfigurationProperty {..}
    = CustomContentConfigurationProperty
        {contentType = Prelude.pure newValue, ..}
instance Property "ContentUrl" CustomContentConfigurationProperty where
  type PropertyType "ContentUrl" CustomContentConfigurationProperty = Value Prelude.Text
  set newValue CustomContentConfigurationProperty {..}
    = CustomContentConfigurationProperty
        {contentUrl = Prelude.pure newValue, ..}
instance Property "ImageScaling" CustomContentConfigurationProperty where
  type PropertyType "ImageScaling" CustomContentConfigurationProperty = Value Prelude.Text
  set newValue CustomContentConfigurationProperty {..}
    = CustomContentConfigurationProperty
        {imageScaling = Prelude.pure newValue, ..}
instance Property "Interactions" CustomContentConfigurationProperty where
  type PropertyType "Interactions" CustomContentConfigurationProperty = VisualInteractionOptionsProperty
  set newValue CustomContentConfigurationProperty {..}
    = CustomContentConfigurationProperty
        {interactions = Prelude.pure newValue, ..}