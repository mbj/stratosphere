module Stratosphere.AppRunner.Service.CodeRepositoryProperty (
        module Exports, CodeRepositoryProperty(..),
        mkCodeRepositoryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.Service.CodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppRunner.Service.SourceCodeVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeRepositoryProperty
  = CodeRepositoryProperty {codeConfiguration :: (Prelude.Maybe CodeConfigurationProperty),
                            repositoryUrl :: (Value Prelude.Text),
                            sourceCodeVersion :: SourceCodeVersionProperty}
mkCodeRepositoryProperty ::
  Value Prelude.Text
  -> SourceCodeVersionProperty -> CodeRepositoryProperty
mkCodeRepositoryProperty repositoryUrl sourceCodeVersion
  = CodeRepositoryProperty
      {repositoryUrl = repositoryUrl,
       sourceCodeVersion = sourceCodeVersion,
       codeConfiguration = Prelude.Nothing}
instance ToResourceProperties CodeRepositoryProperty where
  toResourceProperties CodeRepositoryProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.CodeRepository",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RepositoryUrl" JSON..= repositoryUrl,
                            "SourceCodeVersion" JSON..= sourceCodeVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeConfiguration" Prelude.<$> codeConfiguration]))}
instance JSON.ToJSON CodeRepositoryProperty where
  toJSON CodeRepositoryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RepositoryUrl" JSON..= repositoryUrl,
               "SourceCodeVersion" JSON..= sourceCodeVersion]
              (Prelude.catMaybes
                 [(JSON..=) "CodeConfiguration" Prelude.<$> codeConfiguration])))
instance Property "CodeConfiguration" CodeRepositoryProperty where
  type PropertyType "CodeConfiguration" CodeRepositoryProperty = CodeConfigurationProperty
  set newValue CodeRepositoryProperty {..}
    = CodeRepositoryProperty
        {codeConfiguration = Prelude.pure newValue, ..}
instance Property "RepositoryUrl" CodeRepositoryProperty where
  type PropertyType "RepositoryUrl" CodeRepositoryProperty = Value Prelude.Text
  set newValue CodeRepositoryProperty {..}
    = CodeRepositoryProperty {repositoryUrl = newValue, ..}
instance Property "SourceCodeVersion" CodeRepositoryProperty where
  type PropertyType "SourceCodeVersion" CodeRepositoryProperty = SourceCodeVersionProperty
  set newValue CodeRepositoryProperty {..}
    = CodeRepositoryProperty {sourceCodeVersion = newValue, ..}