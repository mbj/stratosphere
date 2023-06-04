module Stratosphere.QuickSight.Dashboard.CustomActionNavigationOperationProperty (
        module Exports, CustomActionNavigationOperationProperty(..),
        mkCustomActionNavigationOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LocalNavigationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CustomActionNavigationOperationProperty
  = CustomActionNavigationOperationProperty {localNavigationConfiguration :: (Prelude.Maybe LocalNavigationConfigurationProperty)}
mkCustomActionNavigationOperationProperty ::
  CustomActionNavigationOperationProperty
mkCustomActionNavigationOperationProperty
  = CustomActionNavigationOperationProperty
      {localNavigationConfiguration = Prelude.Nothing}
instance ToResourceProperties CustomActionNavigationOperationProperty where
  toResourceProperties CustomActionNavigationOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CustomActionNavigationOperation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LocalNavigationConfiguration"
                              Prelude.<$> localNavigationConfiguration])}
instance JSON.ToJSON CustomActionNavigationOperationProperty where
  toJSON CustomActionNavigationOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LocalNavigationConfiguration"
                 Prelude.<$> localNavigationConfiguration]))
instance Property "LocalNavigationConfiguration" CustomActionNavigationOperationProperty where
  type PropertyType "LocalNavigationConfiguration" CustomActionNavigationOperationProperty = LocalNavigationConfigurationProperty
  set newValue CustomActionNavigationOperationProperty {}
    = CustomActionNavigationOperationProperty
        {localNavigationConfiguration = Prelude.pure newValue, ..}