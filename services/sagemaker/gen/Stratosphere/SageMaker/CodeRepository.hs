module Stratosphere.SageMaker.CodeRepository (
        module Exports, CodeRepository(..), mkCodeRepository
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.CodeRepository.GitConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CodeRepository
  = CodeRepository {codeRepositoryName :: (Prelude.Maybe (Value Prelude.Text)),
                    gitConfig :: GitConfigProperty,
                    tags :: (Prelude.Maybe [Tag])}
mkCodeRepository :: GitConfigProperty -> CodeRepository
mkCodeRepository gitConfig
  = CodeRepository
      {gitConfig = gitConfig, codeRepositoryName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CodeRepository where
  toResourceProperties CodeRepository {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::CodeRepository",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GitConfig" JSON..= gitConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeRepositoryName" Prelude.<$> codeRepositoryName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CodeRepository where
  toJSON CodeRepository {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GitConfig" JSON..= gitConfig]
              (Prelude.catMaybes
                 [(JSON..=) "CodeRepositoryName" Prelude.<$> codeRepositoryName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CodeRepositoryName" CodeRepository where
  type PropertyType "CodeRepositoryName" CodeRepository = Value Prelude.Text
  set newValue CodeRepository {..}
    = CodeRepository {codeRepositoryName = Prelude.pure newValue, ..}
instance Property "GitConfig" CodeRepository where
  type PropertyType "GitConfig" CodeRepository = GitConfigProperty
  set newValue CodeRepository {..}
    = CodeRepository {gitConfig = newValue, ..}
instance Property "Tags" CodeRepository where
  type PropertyType "Tags" CodeRepository = [Tag]
  set newValue CodeRepository {..}
    = CodeRepository {tags = Prelude.pure newValue, ..}