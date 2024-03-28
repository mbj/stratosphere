module Stratosphere.S3.StorageLensGroup.OrProperty (
        module Exports, OrProperty(..), mkOrProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLensGroup.MatchObjectAgeProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLensGroup.MatchObjectSizeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OrProperty
  = OrProperty {matchAnyPrefix :: (Prelude.Maybe (ValueList Prelude.Text)),
                matchAnySuffix :: (Prelude.Maybe (ValueList Prelude.Text)),
                matchAnyTag :: (Prelude.Maybe [Tag]),
                matchObjectAge :: (Prelude.Maybe MatchObjectAgeProperty),
                matchObjectSize :: (Prelude.Maybe MatchObjectSizeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrProperty :: OrProperty
mkOrProperty
  = OrProperty
      {matchAnyPrefix = Prelude.Nothing,
       matchAnySuffix = Prelude.Nothing, matchAnyTag = Prelude.Nothing,
       matchObjectAge = Prelude.Nothing,
       matchObjectSize = Prelude.Nothing}
instance ToResourceProperties OrProperty where
  toResourceProperties OrProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLensGroup.Or",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MatchAnyPrefix" Prelude.<$> matchAnyPrefix,
                            (JSON..=) "MatchAnySuffix" Prelude.<$> matchAnySuffix,
                            (JSON..=) "MatchAnyTag" Prelude.<$> matchAnyTag,
                            (JSON..=) "MatchObjectAge" Prelude.<$> matchObjectAge,
                            (JSON..=) "MatchObjectSize" Prelude.<$> matchObjectSize])}
instance JSON.ToJSON OrProperty where
  toJSON OrProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MatchAnyPrefix" Prelude.<$> matchAnyPrefix,
               (JSON..=) "MatchAnySuffix" Prelude.<$> matchAnySuffix,
               (JSON..=) "MatchAnyTag" Prelude.<$> matchAnyTag,
               (JSON..=) "MatchObjectAge" Prelude.<$> matchObjectAge,
               (JSON..=) "MatchObjectSize" Prelude.<$> matchObjectSize]))
instance Property "MatchAnyPrefix" OrProperty where
  type PropertyType "MatchAnyPrefix" OrProperty = ValueList Prelude.Text
  set newValue OrProperty {..}
    = OrProperty {matchAnyPrefix = Prelude.pure newValue, ..}
instance Property "MatchAnySuffix" OrProperty where
  type PropertyType "MatchAnySuffix" OrProperty = ValueList Prelude.Text
  set newValue OrProperty {..}
    = OrProperty {matchAnySuffix = Prelude.pure newValue, ..}
instance Property "MatchAnyTag" OrProperty where
  type PropertyType "MatchAnyTag" OrProperty = [Tag]
  set newValue OrProperty {..}
    = OrProperty {matchAnyTag = Prelude.pure newValue, ..}
instance Property "MatchObjectAge" OrProperty where
  type PropertyType "MatchObjectAge" OrProperty = MatchObjectAgeProperty
  set newValue OrProperty {..}
    = OrProperty {matchObjectAge = Prelude.pure newValue, ..}
instance Property "MatchObjectSize" OrProperty where
  type PropertyType "MatchObjectSize" OrProperty = MatchObjectSizeProperty
  set newValue OrProperty {..}
    = OrProperty {matchObjectSize = Prelude.pure newValue, ..}