module Stratosphere.QuickSight.Template.ReferenceLineProperty (
        module Exports, ReferenceLineProperty(..), mkReferenceLineProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineDataConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineLabelConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineStyleConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineProperty
  = ReferenceLineProperty {dataConfiguration :: ReferenceLineDataConfigurationProperty,
                           labelConfiguration :: (Prelude.Maybe ReferenceLineLabelConfigurationProperty),
                           status :: (Prelude.Maybe (Value Prelude.Text)),
                           styleConfiguration :: (Prelude.Maybe ReferenceLineStyleConfigurationProperty)}
mkReferenceLineProperty ::
  ReferenceLineDataConfigurationProperty -> ReferenceLineProperty
mkReferenceLineProperty dataConfiguration
  = ReferenceLineProperty
      {dataConfiguration = dataConfiguration,
       labelConfiguration = Prelude.Nothing, status = Prelude.Nothing,
       styleConfiguration = Prelude.Nothing}
instance ToResourceProperties ReferenceLineProperty where
  toResourceProperties ReferenceLineProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ReferenceLine",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataConfiguration" JSON..= dataConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "LabelConfiguration" Prelude.<$> labelConfiguration,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "StyleConfiguration" Prelude.<$> styleConfiguration]))}
instance JSON.ToJSON ReferenceLineProperty where
  toJSON ReferenceLineProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataConfiguration" JSON..= dataConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "LabelConfiguration" Prelude.<$> labelConfiguration,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "StyleConfiguration" Prelude.<$> styleConfiguration])))
instance Property "DataConfiguration" ReferenceLineProperty where
  type PropertyType "DataConfiguration" ReferenceLineProperty = ReferenceLineDataConfigurationProperty
  set newValue ReferenceLineProperty {..}
    = ReferenceLineProperty {dataConfiguration = newValue, ..}
instance Property "LabelConfiguration" ReferenceLineProperty where
  type PropertyType "LabelConfiguration" ReferenceLineProperty = ReferenceLineLabelConfigurationProperty
  set newValue ReferenceLineProperty {..}
    = ReferenceLineProperty
        {labelConfiguration = Prelude.pure newValue, ..}
instance Property "Status" ReferenceLineProperty where
  type PropertyType "Status" ReferenceLineProperty = Value Prelude.Text
  set newValue ReferenceLineProperty {..}
    = ReferenceLineProperty {status = Prelude.pure newValue, ..}
instance Property "StyleConfiguration" ReferenceLineProperty where
  type PropertyType "StyleConfiguration" ReferenceLineProperty = ReferenceLineStyleConfigurationProperty
  set newValue ReferenceLineProperty {..}
    = ReferenceLineProperty
        {styleConfiguration = Prelude.pure newValue, ..}