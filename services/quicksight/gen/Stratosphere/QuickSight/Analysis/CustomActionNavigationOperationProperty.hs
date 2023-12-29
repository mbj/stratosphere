module Stratosphere.QuickSight.Analysis.CustomActionNavigationOperationProperty (
        module Exports, CustomActionNavigationOperationProperty(..),
        mkCustomActionNavigationOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LocalNavigationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CustomActionNavigationOperationProperty
  = CustomActionNavigationOperationProperty {localNavigationConfiguration :: (Prelude.Maybe LocalNavigationConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionNavigationOperationProperty ::
  CustomActionNavigationOperationProperty
mkCustomActionNavigationOperationProperty
  = CustomActionNavigationOperationProperty
      {localNavigationConfiguration = Prelude.Nothing}
instance ToResourceProperties CustomActionNavigationOperationProperty where
  toResourceProperties CustomActionNavigationOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.CustomActionNavigationOperation",
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