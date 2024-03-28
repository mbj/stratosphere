module Stratosphere.Glue.Crawler (
        module Exports, Crawler(..), mkCrawler
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Crawler.LakeFormationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.RecrawlPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.ScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.SchemaChangePolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.TargetsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Crawler
  = Crawler {classifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
             configuration :: (Prelude.Maybe (Value Prelude.Text)),
             crawlerSecurityConfiguration :: (Prelude.Maybe (Value Prelude.Text)),
             databaseName :: (Prelude.Maybe (Value Prelude.Text)),
             description :: (Prelude.Maybe (Value Prelude.Text)),
             lakeFormationConfiguration :: (Prelude.Maybe LakeFormationConfigurationProperty),
             name :: (Prelude.Maybe (Value Prelude.Text)),
             recrawlPolicy :: (Prelude.Maybe RecrawlPolicyProperty),
             role :: (Value Prelude.Text),
             schedule :: (Prelude.Maybe ScheduleProperty),
             schemaChangePolicy :: (Prelude.Maybe SchemaChangePolicyProperty),
             tablePrefix :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe JSON.Object),
             targets :: TargetsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrawler :: Value Prelude.Text -> TargetsProperty -> Crawler
mkCrawler role targets
  = Crawler
      {role = role, targets = targets, classifiers = Prelude.Nothing,
       configuration = Prelude.Nothing,
       crawlerSecurityConfiguration = Prelude.Nothing,
       databaseName = Prelude.Nothing, description = Prelude.Nothing,
       lakeFormationConfiguration = Prelude.Nothing,
       name = Prelude.Nothing, recrawlPolicy = Prelude.Nothing,
       schedule = Prelude.Nothing, schemaChangePolicy = Prelude.Nothing,
       tablePrefix = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Crawler where
  toResourceProperties Crawler {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Role" JSON..= role, "Targets" JSON..= targets]
                           (Prelude.catMaybes
                              [(JSON..=) "Classifiers" Prelude.<$> classifiers,
                               (JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "CrawlerSecurityConfiguration"
                                 Prelude.<$> crawlerSecurityConfiguration,
                               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LakeFormationConfiguration"
                                 Prelude.<$> lakeFormationConfiguration,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "RecrawlPolicy" Prelude.<$> recrawlPolicy,
                               (JSON..=) "Schedule" Prelude.<$> schedule,
                               (JSON..=) "SchemaChangePolicy" Prelude.<$> schemaChangePolicy,
                               (JSON..=) "TablePrefix" Prelude.<$> tablePrefix,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Crawler where
  toJSON Crawler {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Role" JSON..= role, "Targets" JSON..= targets]
              (Prelude.catMaybes
                 [(JSON..=) "Classifiers" Prelude.<$> classifiers,
                  (JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "CrawlerSecurityConfiguration"
                    Prelude.<$> crawlerSecurityConfiguration,
                  (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LakeFormationConfiguration"
                    Prelude.<$> lakeFormationConfiguration,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "RecrawlPolicy" Prelude.<$> recrawlPolicy,
                  (JSON..=) "Schedule" Prelude.<$> schedule,
                  (JSON..=) "SchemaChangePolicy" Prelude.<$> schemaChangePolicy,
                  (JSON..=) "TablePrefix" Prelude.<$> tablePrefix,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Classifiers" Crawler where
  type PropertyType "Classifiers" Crawler = ValueList Prelude.Text
  set newValue Crawler {..}
    = Crawler {classifiers = Prelude.pure newValue, ..}
instance Property "Configuration" Crawler where
  type PropertyType "Configuration" Crawler = Value Prelude.Text
  set newValue Crawler {..}
    = Crawler {configuration = Prelude.pure newValue, ..}
instance Property "CrawlerSecurityConfiguration" Crawler where
  type PropertyType "CrawlerSecurityConfiguration" Crawler = Value Prelude.Text
  set newValue Crawler {..}
    = Crawler
        {crawlerSecurityConfiguration = Prelude.pure newValue, ..}
instance Property "DatabaseName" Crawler where
  type PropertyType "DatabaseName" Crawler = Value Prelude.Text
  set newValue Crawler {..}
    = Crawler {databaseName = Prelude.pure newValue, ..}
instance Property "Description" Crawler where
  type PropertyType "Description" Crawler = Value Prelude.Text
  set newValue Crawler {..}
    = Crawler {description = Prelude.pure newValue, ..}
instance Property "LakeFormationConfiguration" Crawler where
  type PropertyType "LakeFormationConfiguration" Crawler = LakeFormationConfigurationProperty
  set newValue Crawler {..}
    = Crawler {lakeFormationConfiguration = Prelude.pure newValue, ..}
instance Property "Name" Crawler where
  type PropertyType "Name" Crawler = Value Prelude.Text
  set newValue Crawler {..}
    = Crawler {name = Prelude.pure newValue, ..}
instance Property "RecrawlPolicy" Crawler where
  type PropertyType "RecrawlPolicy" Crawler = RecrawlPolicyProperty
  set newValue Crawler {..}
    = Crawler {recrawlPolicy = Prelude.pure newValue, ..}
instance Property "Role" Crawler where
  type PropertyType "Role" Crawler = Value Prelude.Text
  set newValue Crawler {..} = Crawler {role = newValue, ..}
instance Property "Schedule" Crawler where
  type PropertyType "Schedule" Crawler = ScheduleProperty
  set newValue Crawler {..}
    = Crawler {schedule = Prelude.pure newValue, ..}
instance Property "SchemaChangePolicy" Crawler where
  type PropertyType "SchemaChangePolicy" Crawler = SchemaChangePolicyProperty
  set newValue Crawler {..}
    = Crawler {schemaChangePolicy = Prelude.pure newValue, ..}
instance Property "TablePrefix" Crawler where
  type PropertyType "TablePrefix" Crawler = Value Prelude.Text
  set newValue Crawler {..}
    = Crawler {tablePrefix = Prelude.pure newValue, ..}
instance Property "Tags" Crawler where
  type PropertyType "Tags" Crawler = JSON.Object
  set newValue Crawler {..}
    = Crawler {tags = Prelude.pure newValue, ..}
instance Property "Targets" Crawler where
  type PropertyType "Targets" Crawler = TargetsProperty
  set newValue Crawler {..} = Crawler {targets = newValue, ..}