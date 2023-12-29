module Stratosphere.QuickSight.Template.BodySectionConfigurationProperty (
        module Exports, BodySectionConfigurationProperty(..),
        mkBodySectionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BodySectionContentProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SectionPageBreakConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SectionStyleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BodySectionConfigurationProperty
  = BodySectionConfigurationProperty {content :: BodySectionContentProperty,
                                      pageBreakConfiguration :: (Prelude.Maybe SectionPageBreakConfigurationProperty),
                                      sectionId :: (Value Prelude.Text),
                                      style :: (Prelude.Maybe SectionStyleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBodySectionConfigurationProperty ::
  BodySectionContentProperty
  -> Value Prelude.Text -> BodySectionConfigurationProperty
mkBodySectionConfigurationProperty content sectionId
  = BodySectionConfigurationProperty
      {content = content, sectionId = sectionId,
       pageBreakConfiguration = Prelude.Nothing, style = Prelude.Nothing}
instance ToResourceProperties BodySectionConfigurationProperty where
  toResourceProperties BodySectionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.BodySectionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content, "SectionId" JSON..= sectionId]
                           (Prelude.catMaybes
                              [(JSON..=) "PageBreakConfiguration"
                                 Prelude.<$> pageBreakConfiguration,
                               (JSON..=) "Style" Prelude.<$> style]))}
instance JSON.ToJSON BodySectionConfigurationProperty where
  toJSON BodySectionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content, "SectionId" JSON..= sectionId]
              (Prelude.catMaybes
                 [(JSON..=) "PageBreakConfiguration"
                    Prelude.<$> pageBreakConfiguration,
                  (JSON..=) "Style" Prelude.<$> style])))
instance Property "Content" BodySectionConfigurationProperty where
  type PropertyType "Content" BodySectionConfigurationProperty = BodySectionContentProperty
  set newValue BodySectionConfigurationProperty {..}
    = BodySectionConfigurationProperty {content = newValue, ..}
instance Property "PageBreakConfiguration" BodySectionConfigurationProperty where
  type PropertyType "PageBreakConfiguration" BodySectionConfigurationProperty = SectionPageBreakConfigurationProperty
  set newValue BodySectionConfigurationProperty {..}
    = BodySectionConfigurationProperty
        {pageBreakConfiguration = Prelude.pure newValue, ..}
instance Property "SectionId" BodySectionConfigurationProperty where
  type PropertyType "SectionId" BodySectionConfigurationProperty = Value Prelude.Text
  set newValue BodySectionConfigurationProperty {..}
    = BodySectionConfigurationProperty {sectionId = newValue, ..}
instance Property "Style" BodySectionConfigurationProperty where
  type PropertyType "Style" BodySectionConfigurationProperty = SectionStyleProperty
  set newValue BodySectionConfigurationProperty {..}
    = BodySectionConfigurationProperty
        {style = Prelude.pure newValue, ..}