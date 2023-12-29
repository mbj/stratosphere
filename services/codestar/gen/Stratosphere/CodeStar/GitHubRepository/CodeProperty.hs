module Stratosphere.CodeStar.GitHubRepository.CodeProperty (
        module Exports, CodeProperty(..), mkCodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeStar.GitHubRepository.S3Property as Exports
import Stratosphere.ResourceProperties
data CodeProperty
  = CodeProperty {s3 :: S3Property}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeProperty :: S3Property -> CodeProperty
mkCodeProperty s3 = CodeProperty {s3 = s3}
instance ToResourceProperties CodeProperty where
  toResourceProperties CodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeStar::GitHubRepository.Code",
         supportsTags = Prelude.False, properties = ["S3" JSON..= s3]}
instance JSON.ToJSON CodeProperty where
  toJSON CodeProperty {..} = JSON.object ["S3" JSON..= s3]
instance Property "S3" CodeProperty where
  type PropertyType "S3" CodeProperty = S3Property
  set newValue CodeProperty {} = CodeProperty {s3 = newValue, ..}