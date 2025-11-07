module Stratosphere.CleanRooms.AnalysisTemplate (
        module Exports, AnalysisTemplate(..), mkAnalysisTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.AnalysisParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.AnalysisSchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.AnalysisSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.AnalysisSourceMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.ErrorMessageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AnalysisTemplate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html>
    AnalysisTemplate {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html#cfn-cleanrooms-analysistemplate-analysisparameters>
                      analysisParameters :: (Prelude.Maybe [AnalysisParameterProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html#cfn-cleanrooms-analysistemplate-description>
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html#cfn-cleanrooms-analysistemplate-errormessageconfiguration>
                      errorMessageConfiguration :: (Prelude.Maybe ErrorMessageConfigurationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html#cfn-cleanrooms-analysistemplate-format>
                      format :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html#cfn-cleanrooms-analysistemplate-membershipidentifier>
                      membershipIdentifier :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html#cfn-cleanrooms-analysistemplate-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html#cfn-cleanrooms-analysistemplate-schema>
                      schema :: (Prelude.Maybe AnalysisSchemaProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html#cfn-cleanrooms-analysistemplate-source>
                      source :: AnalysisSourceProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html#cfn-cleanrooms-analysistemplate-sourcemetadata>
                      sourceMetadata :: (Prelude.Maybe AnalysisSourceMetadataProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-analysistemplate.html#cfn-cleanrooms-analysistemplate-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisTemplate ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> AnalysisSourceProperty -> AnalysisTemplate
mkAnalysisTemplate format membershipIdentifier name source
  = AnalysisTemplate
      {haddock_workaround_ = (), format = format,
       membershipIdentifier = membershipIdentifier, name = name,
       source = source, analysisParameters = Prelude.Nothing,
       description = Prelude.Nothing,
       errorMessageConfiguration = Prelude.Nothing,
       schema = Prelude.Nothing, sourceMetadata = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AnalysisTemplate where
  toResourceProperties AnalysisTemplate {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Format" JSON..= format,
                            "MembershipIdentifier" JSON..= membershipIdentifier,
                            "Name" JSON..= name, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "AnalysisParameters" Prelude.<$> analysisParameters,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ErrorMessageConfiguration"
                                 Prelude.<$> errorMessageConfiguration,
                               (JSON..=) "Schema" Prelude.<$> schema,
                               (JSON..=) "SourceMetadata" Prelude.<$> sourceMetadata,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AnalysisTemplate where
  toJSON AnalysisTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Format" JSON..= format,
               "MembershipIdentifier" JSON..= membershipIdentifier,
               "Name" JSON..= name, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "AnalysisParameters" Prelude.<$> analysisParameters,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ErrorMessageConfiguration"
                    Prelude.<$> errorMessageConfiguration,
                  (JSON..=) "Schema" Prelude.<$> schema,
                  (JSON..=) "SourceMetadata" Prelude.<$> sourceMetadata,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AnalysisParameters" AnalysisTemplate where
  type PropertyType "AnalysisParameters" AnalysisTemplate = [AnalysisParameterProperty]
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {analysisParameters = Prelude.pure newValue, ..}
instance Property "Description" AnalysisTemplate where
  type PropertyType "Description" AnalysisTemplate = Value Prelude.Text
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {description = Prelude.pure newValue, ..}
instance Property "ErrorMessageConfiguration" AnalysisTemplate where
  type PropertyType "ErrorMessageConfiguration" AnalysisTemplate = ErrorMessageConfigurationProperty
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate
        {errorMessageConfiguration = Prelude.pure newValue, ..}
instance Property "Format" AnalysisTemplate where
  type PropertyType "Format" AnalysisTemplate = Value Prelude.Text
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {format = newValue, ..}
instance Property "MembershipIdentifier" AnalysisTemplate where
  type PropertyType "MembershipIdentifier" AnalysisTemplate = Value Prelude.Text
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {membershipIdentifier = newValue, ..}
instance Property "Name" AnalysisTemplate where
  type PropertyType "Name" AnalysisTemplate = Value Prelude.Text
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {name = newValue, ..}
instance Property "Schema" AnalysisTemplate where
  type PropertyType "Schema" AnalysisTemplate = AnalysisSchemaProperty
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {schema = Prelude.pure newValue, ..}
instance Property "Source" AnalysisTemplate where
  type PropertyType "Source" AnalysisTemplate = AnalysisSourceProperty
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {source = newValue, ..}
instance Property "SourceMetadata" AnalysisTemplate where
  type PropertyType "SourceMetadata" AnalysisTemplate = AnalysisSourceMetadataProperty
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {sourceMetadata = Prelude.pure newValue, ..}
instance Property "Tags" AnalysisTemplate where
  type PropertyType "Tags" AnalysisTemplate = [Tag]
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {tags = Prelude.pure newValue, ..}