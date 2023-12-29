module Stratosphere.AppMesh.Route.HeaderMatchMethodProperty (
        module Exports, HeaderMatchMethodProperty(..),
        mkHeaderMatchMethodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.MatchRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderMatchMethodProperty
  = HeaderMatchMethodProperty {exact :: (Prelude.Maybe (Value Prelude.Text)),
                               prefix :: (Prelude.Maybe (Value Prelude.Text)),
                               range :: (Prelude.Maybe MatchRangeProperty),
                               regex :: (Prelude.Maybe (Value Prelude.Text)),
                               suffix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeaderMatchMethodProperty :: HeaderMatchMethodProperty
mkHeaderMatchMethodProperty
  = HeaderMatchMethodProperty
      {exact = Prelude.Nothing, prefix = Prelude.Nothing,
       range = Prelude.Nothing, regex = Prelude.Nothing,
       suffix = Prelude.Nothing}
instance ToResourceProperties HeaderMatchMethodProperty where
  toResourceProperties HeaderMatchMethodProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.HeaderMatchMethod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exact" Prelude.<$> exact,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "Range" Prelude.<$> range,
                            (JSON..=) "Regex" Prelude.<$> regex,
                            (JSON..=) "Suffix" Prelude.<$> suffix])}
instance JSON.ToJSON HeaderMatchMethodProperty where
  toJSON HeaderMatchMethodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exact" Prelude.<$> exact,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "Range" Prelude.<$> range,
               (JSON..=) "Regex" Prelude.<$> regex,
               (JSON..=) "Suffix" Prelude.<$> suffix]))
instance Property "Exact" HeaderMatchMethodProperty where
  type PropertyType "Exact" HeaderMatchMethodProperty = Value Prelude.Text
  set newValue HeaderMatchMethodProperty {..}
    = HeaderMatchMethodProperty {exact = Prelude.pure newValue, ..}
instance Property "Prefix" HeaderMatchMethodProperty where
  type PropertyType "Prefix" HeaderMatchMethodProperty = Value Prelude.Text
  set newValue HeaderMatchMethodProperty {..}
    = HeaderMatchMethodProperty {prefix = Prelude.pure newValue, ..}
instance Property "Range" HeaderMatchMethodProperty where
  type PropertyType "Range" HeaderMatchMethodProperty = MatchRangeProperty
  set newValue HeaderMatchMethodProperty {..}
    = HeaderMatchMethodProperty {range = Prelude.pure newValue, ..}
instance Property "Regex" HeaderMatchMethodProperty where
  type PropertyType "Regex" HeaderMatchMethodProperty = Value Prelude.Text
  set newValue HeaderMatchMethodProperty {..}
    = HeaderMatchMethodProperty {regex = Prelude.pure newValue, ..}
instance Property "Suffix" HeaderMatchMethodProperty where
  type PropertyType "Suffix" HeaderMatchMethodProperty = Value Prelude.Text
  set newValue HeaderMatchMethodProperty {..}
    = HeaderMatchMethodProperty {suffix = Prelude.pure newValue, ..}