module Stratosphere.QuickSight.Dashboard.CascadingControlConfigurationProperty (
        module Exports, CascadingControlConfigurationProperty(..),
        mkCascadingControlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CascadingControlSourceProperty as Exports
import Stratosphere.ResourceProperties
data CascadingControlConfigurationProperty
  = CascadingControlConfigurationProperty {sourceControls :: (Prelude.Maybe [CascadingControlSourceProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCascadingControlConfigurationProperty ::
  CascadingControlConfigurationProperty
mkCascadingControlConfigurationProperty
  = CascadingControlConfigurationProperty
      {sourceControls = Prelude.Nothing}
instance ToResourceProperties CascadingControlConfigurationProperty where
  toResourceProperties CascadingControlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CascadingControlConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceControls" Prelude.<$> sourceControls])}
instance JSON.ToJSON CascadingControlConfigurationProperty where
  toJSON CascadingControlConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceControls" Prelude.<$> sourceControls]))
instance Property "SourceControls" CascadingControlConfigurationProperty where
  type PropertyType "SourceControls" CascadingControlConfigurationProperty = [CascadingControlSourceProperty]
  set newValue CascadingControlConfigurationProperty {}
    = CascadingControlConfigurationProperty
        {sourceControls = Prelude.pure newValue, ..}