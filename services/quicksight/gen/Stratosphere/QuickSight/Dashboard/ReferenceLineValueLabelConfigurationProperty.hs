module Stratosphere.QuickSight.Dashboard.ReferenceLineValueLabelConfigurationProperty (
        module Exports, ReferenceLineValueLabelConfigurationProperty(..),
        mkReferenceLineValueLabelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.NumericFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineValueLabelConfigurationProperty
  = ReferenceLineValueLabelConfigurationProperty {formatConfiguration :: (Prelude.Maybe NumericFormatConfigurationProperty),
                                                  relativePosition :: (Prelude.Maybe (Value Prelude.Text))}
mkReferenceLineValueLabelConfigurationProperty ::
  ReferenceLineValueLabelConfigurationProperty
mkReferenceLineValueLabelConfigurationProperty
  = ReferenceLineValueLabelConfigurationProperty
      {formatConfiguration = Prelude.Nothing,
       relativePosition = Prelude.Nothing}
instance ToResourceProperties ReferenceLineValueLabelConfigurationProperty where
  toResourceProperties
    ReferenceLineValueLabelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ReferenceLineValueLabelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration,
                            (JSON..=) "RelativePosition" Prelude.<$> relativePosition])}
instance JSON.ToJSON ReferenceLineValueLabelConfigurationProperty where
  toJSON ReferenceLineValueLabelConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration,
               (JSON..=) "RelativePosition" Prelude.<$> relativePosition]))
instance Property "FormatConfiguration" ReferenceLineValueLabelConfigurationProperty where
  type PropertyType "FormatConfiguration" ReferenceLineValueLabelConfigurationProperty = NumericFormatConfigurationProperty
  set newValue ReferenceLineValueLabelConfigurationProperty {..}
    = ReferenceLineValueLabelConfigurationProperty
        {formatConfiguration = Prelude.pure newValue, ..}
instance Property "RelativePosition" ReferenceLineValueLabelConfigurationProperty where
  type PropertyType "RelativePosition" ReferenceLineValueLabelConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineValueLabelConfigurationProperty {..}
    = ReferenceLineValueLabelConfigurationProperty
        {relativePosition = Prelude.pure newValue, ..}