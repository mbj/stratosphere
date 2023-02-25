module Stratosphere.Macie.AllowList.CriteriaProperty (
        module Exports, CriteriaProperty(..), mkCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Macie.AllowList.S3WordsListProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CriteriaProperty
  = CriteriaProperty {regex :: (Prelude.Maybe (Value Prelude.Text)),
                      s3WordsList :: (Prelude.Maybe S3WordsListProperty)}
mkCriteriaProperty :: CriteriaProperty
mkCriteriaProperty
  = CriteriaProperty
      {regex = Prelude.Nothing, s3WordsList = Prelude.Nothing}
instance ToResourceProperties CriteriaProperty where
  toResourceProperties CriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Macie::AllowList.Criteria",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Regex" Prelude.<$> regex,
                            (JSON..=) "S3WordsList" Prelude.<$> s3WordsList])}
instance JSON.ToJSON CriteriaProperty where
  toJSON CriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Regex" Prelude.<$> regex,
               (JSON..=) "S3WordsList" Prelude.<$> s3WordsList]))
instance Property "Regex" CriteriaProperty where
  type PropertyType "Regex" CriteriaProperty = Value Prelude.Text
  set newValue CriteriaProperty {..}
    = CriteriaProperty {regex = Prelude.pure newValue, ..}
instance Property "S3WordsList" CriteriaProperty where
  type PropertyType "S3WordsList" CriteriaProperty = S3WordsListProperty
  set newValue CriteriaProperty {..}
    = CriteriaProperty {s3WordsList = Prelude.pure newValue, ..}