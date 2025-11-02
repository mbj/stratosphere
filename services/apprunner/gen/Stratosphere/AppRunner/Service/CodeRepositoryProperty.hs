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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-coderepository.html>
    CodeRepositoryProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-coderepository.html#cfn-apprunner-service-coderepository-codeconfiguration>
                            codeConfiguration :: (Prelude.Maybe CodeConfigurationProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-coderepository.html#cfn-apprunner-service-coderepository-repositoryurl>
                            repositoryUrl :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-coderepository.html#cfn-apprunner-service-coderepository-sourcecodeversion>
                            sourceCodeVersion :: SourceCodeVersionProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-coderepository.html#cfn-apprunner-service-coderepository-sourcedirectory>
                            sourceDirectory :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeRepositoryProperty ::
  Value Prelude.Text
  -> SourceCodeVersionProperty -> CodeRepositoryProperty
mkCodeRepositoryProperty repositoryUrl sourceCodeVersion
  = CodeRepositoryProperty
      {haddock_workaround_ = (), repositoryUrl = repositoryUrl,
       sourceCodeVersion = sourceCodeVersion,
       codeConfiguration = Prelude.Nothing,
       sourceDirectory = Prelude.Nothing}
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
                              [(JSON..=) "CodeConfiguration" Prelude.<$> codeConfiguration,
                               (JSON..=) "SourceDirectory" Prelude.<$> sourceDirectory]))}
instance JSON.ToJSON CodeRepositoryProperty where
  toJSON CodeRepositoryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RepositoryUrl" JSON..= repositoryUrl,
               "SourceCodeVersion" JSON..= sourceCodeVersion]
              (Prelude.catMaybes
                 [(JSON..=) "CodeConfiguration" Prelude.<$> codeConfiguration,
                  (JSON..=) "SourceDirectory" Prelude.<$> sourceDirectory])))
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
instance Property "SourceDirectory" CodeRepositoryProperty where
  type PropertyType "SourceDirectory" CodeRepositoryProperty = Value Prelude.Text
  set newValue CodeRepositoryProperty {..}
    = CodeRepositoryProperty
        {sourceDirectory = Prelude.pure newValue, ..}