module Stratosphere.QuickSight.Dashboard.DonutOptionsProperty (
        module Exports, DonutOptionsProperty(..), mkDonutOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ArcOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DonutCenterOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DonutOptionsProperty
  = DonutOptionsProperty {arcOptions :: (Prelude.Maybe ArcOptionsProperty),
                          donutCenterOptions :: (Prelude.Maybe DonutCenterOptionsProperty)}
mkDonutOptionsProperty :: DonutOptionsProperty
mkDonutOptionsProperty
  = DonutOptionsProperty
      {arcOptions = Prelude.Nothing,
       donutCenterOptions = Prelude.Nothing}
instance ToResourceProperties DonutOptionsProperty where
  toResourceProperties DonutOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DonutOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArcOptions" Prelude.<$> arcOptions,
                            (JSON..=) "DonutCenterOptions" Prelude.<$> donutCenterOptions])}
instance JSON.ToJSON DonutOptionsProperty where
  toJSON DonutOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArcOptions" Prelude.<$> arcOptions,
               (JSON..=) "DonutCenterOptions" Prelude.<$> donutCenterOptions]))
instance Property "ArcOptions" DonutOptionsProperty where
  type PropertyType "ArcOptions" DonutOptionsProperty = ArcOptionsProperty
  set newValue DonutOptionsProperty {..}
    = DonutOptionsProperty {arcOptions = Prelude.pure newValue, ..}
instance Property "DonutCenterOptions" DonutOptionsProperty where
  type PropertyType "DonutCenterOptions" DonutOptionsProperty = DonutCenterOptionsProperty
  set newValue DonutOptionsProperty {..}
    = DonutOptionsProperty
        {donutCenterOptions = Prelude.pure newValue, ..}