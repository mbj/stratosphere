module Stratosphere.CleanRooms.AnalysisTemplate (
        module Exports, AnalysisTemplate(..), mkAnalysisTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.AnalysisParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.AnalysisTemplate.AnalysisSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AnalysisTemplate
  = AnalysisTemplate {analysisParameters :: (Prelude.Maybe [AnalysisParameterProperty]),
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      format :: (Value Prelude.Text),
                      membershipIdentifier :: (Value Prelude.Text),
                      name :: (Value Prelude.Text),
                      source :: AnalysisSourceProperty,
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisTemplate ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> AnalysisSourceProperty -> AnalysisTemplate
mkAnalysisTemplate format membershipIdentifier name source
  = AnalysisTemplate
      {format = format, membershipIdentifier = membershipIdentifier,
       name = name, source = source, analysisParameters = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing}
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
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AnalysisParameters" AnalysisTemplate where
  type PropertyType "AnalysisParameters" AnalysisTemplate = [AnalysisParameterProperty]
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {analysisParameters = Prelude.pure newValue, ..}
instance Property "Description" AnalysisTemplate where
  type PropertyType "Description" AnalysisTemplate = Value Prelude.Text
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {description = Prelude.pure newValue, ..}
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
instance Property "Source" AnalysisTemplate where
  type PropertyType "Source" AnalysisTemplate = AnalysisSourceProperty
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {source = newValue, ..}
instance Property "Tags" AnalysisTemplate where
  type PropertyType "Tags" AnalysisTemplate = [Tag]
  set newValue AnalysisTemplate {..}
    = AnalysisTemplate {tags = Prelude.pure newValue, ..}