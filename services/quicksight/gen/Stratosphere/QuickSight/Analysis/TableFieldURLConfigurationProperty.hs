module Stratosphere.QuickSight.Analysis.TableFieldURLConfigurationProperty (
        module Exports, TableFieldURLConfigurationProperty(..),
        mkTableFieldURLConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableFieldImageConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableFieldLinkConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TableFieldURLConfigurationProperty
  = TableFieldURLConfigurationProperty {imageConfiguration :: (Prelude.Maybe TableFieldImageConfigurationProperty),
                                        linkConfiguration :: (Prelude.Maybe TableFieldLinkConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldURLConfigurationProperty ::
  TableFieldURLConfigurationProperty
mkTableFieldURLConfigurationProperty
  = TableFieldURLConfigurationProperty
      {imageConfiguration = Prelude.Nothing,
       linkConfiguration = Prelude.Nothing}
instance ToResourceProperties TableFieldURLConfigurationProperty where
  toResourceProperties TableFieldURLConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableFieldURLConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration,
                            (JSON..=) "LinkConfiguration" Prelude.<$> linkConfiguration])}
instance JSON.ToJSON TableFieldURLConfigurationProperty where
  toJSON TableFieldURLConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration,
               (JSON..=) "LinkConfiguration" Prelude.<$> linkConfiguration]))
instance Property "ImageConfiguration" TableFieldURLConfigurationProperty where
  type PropertyType "ImageConfiguration" TableFieldURLConfigurationProperty = TableFieldImageConfigurationProperty
  set newValue TableFieldURLConfigurationProperty {..}
    = TableFieldURLConfigurationProperty
        {imageConfiguration = Prelude.pure newValue, ..}
instance Property "LinkConfiguration" TableFieldURLConfigurationProperty where
  type PropertyType "LinkConfiguration" TableFieldURLConfigurationProperty = TableFieldLinkConfigurationProperty
  set newValue TableFieldURLConfigurationProperty {..}
    = TableFieldURLConfigurationProperty
        {linkConfiguration = Prelude.pure newValue, ..}