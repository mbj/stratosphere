module Stratosphere.Kendra.DataSource.WorkDocsConfigurationProperty (
        module Exports, WorkDocsConfigurationProperty(..),
        mkWorkDocsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkDocsConfigurationProperty
  = WorkDocsConfigurationProperty {crawlComments :: (Prelude.Maybe (Value Prelude.Bool)),
                                   exclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                   inclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   organizationId :: (Value Prelude.Text),
                                   useChangeLog :: (Prelude.Maybe (Value Prelude.Bool))}
mkWorkDocsConfigurationProperty ::
  Value Prelude.Text -> WorkDocsConfigurationProperty
mkWorkDocsConfigurationProperty organizationId
  = WorkDocsConfigurationProperty
      {organizationId = organizationId, crawlComments = Prelude.Nothing,
       exclusionPatterns = Prelude.Nothing,
       fieldMappings = Prelude.Nothing,
       inclusionPatterns = Prelude.Nothing,
       useChangeLog = Prelude.Nothing}
instance ToResourceProperties WorkDocsConfigurationProperty where
  toResourceProperties WorkDocsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.WorkDocsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OrganizationId" JSON..= organizationId]
                           (Prelude.catMaybes
                              [(JSON..=) "CrawlComments" Prelude.<$> crawlComments,
                               (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                               (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns,
                               (JSON..=) "UseChangeLog" Prelude.<$> useChangeLog]))}
instance JSON.ToJSON WorkDocsConfigurationProperty where
  toJSON WorkDocsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OrganizationId" JSON..= organizationId]
              (Prelude.catMaybes
                 [(JSON..=) "CrawlComments" Prelude.<$> crawlComments,
                  (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                  (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns,
                  (JSON..=) "UseChangeLog" Prelude.<$> useChangeLog])))
instance Property "CrawlComments" WorkDocsConfigurationProperty where
  type PropertyType "CrawlComments" WorkDocsConfigurationProperty = Value Prelude.Bool
  set newValue WorkDocsConfigurationProperty {..}
    = WorkDocsConfigurationProperty
        {crawlComments = Prelude.pure newValue, ..}
instance Property "ExclusionPatterns" WorkDocsConfigurationProperty where
  type PropertyType "ExclusionPatterns" WorkDocsConfigurationProperty = ValueList Prelude.Text
  set newValue WorkDocsConfigurationProperty {..}
    = WorkDocsConfigurationProperty
        {exclusionPatterns = Prelude.pure newValue, ..}
instance Property "FieldMappings" WorkDocsConfigurationProperty where
  type PropertyType "FieldMappings" WorkDocsConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue WorkDocsConfigurationProperty {..}
    = WorkDocsConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "InclusionPatterns" WorkDocsConfigurationProperty where
  type PropertyType "InclusionPatterns" WorkDocsConfigurationProperty = ValueList Prelude.Text
  set newValue WorkDocsConfigurationProperty {..}
    = WorkDocsConfigurationProperty
        {inclusionPatterns = Prelude.pure newValue, ..}
instance Property "OrganizationId" WorkDocsConfigurationProperty where
  type PropertyType "OrganizationId" WorkDocsConfigurationProperty = Value Prelude.Text
  set newValue WorkDocsConfigurationProperty {..}
    = WorkDocsConfigurationProperty {organizationId = newValue, ..}
instance Property "UseChangeLog" WorkDocsConfigurationProperty where
  type PropertyType "UseChangeLog" WorkDocsConfigurationProperty = Value Prelude.Bool
  set newValue WorkDocsConfigurationProperty {..}
    = WorkDocsConfigurationProperty
        {useChangeLog = Prelude.pure newValue, ..}