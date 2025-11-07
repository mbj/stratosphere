module Stratosphere.Logs.Transformer.ProcessorProperty (
        module Exports, ProcessorProperty(..), mkProcessorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Transformer.AddKeysProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.CopyValueProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.CsvProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.DateTimeConverterProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.DeleteKeysProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.GrokProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.ListToMapProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.LowerCaseStringProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.MoveKeysProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.ParseCloudfrontProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.ParseJSONProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.ParseKeyValueProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.ParsePostgresProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.ParseRoute53Property as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.ParseToOCSFProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.ParseVPCProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.ParseWAFProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.RenameKeysProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.SplitStringProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.SubstituteStringProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.TrimStringProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.TypeConverterProperty as Exports
import {-# SOURCE #-} Stratosphere.Logs.Transformer.UpperCaseStringProperty as Exports
import Stratosphere.ResourceProperties
data ProcessorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html>
    ProcessorProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-addkeys>
                       addKeys :: (Prelude.Maybe AddKeysProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-copyvalue>
                       copyValue :: (Prelude.Maybe CopyValueProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-csv>
                       csv :: (Prelude.Maybe CsvProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-datetimeconverter>
                       dateTimeConverter :: (Prelude.Maybe DateTimeConverterProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-deletekeys>
                       deleteKeys :: (Prelude.Maybe DeleteKeysProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-grok>
                       grok :: (Prelude.Maybe GrokProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-listtomap>
                       listToMap :: (Prelude.Maybe ListToMapProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-lowercasestring>
                       lowerCaseString :: (Prelude.Maybe LowerCaseStringProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-movekeys>
                       moveKeys :: (Prelude.Maybe MoveKeysProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsecloudfront>
                       parseCloudfront :: (Prelude.Maybe ParseCloudfrontProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsejson>
                       parseJSON :: (Prelude.Maybe ParseJSONProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsekeyvalue>
                       parseKeyValue :: (Prelude.Maybe ParseKeyValueProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsepostgres>
                       parsePostgres :: (Prelude.Maybe ParsePostgresProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parseroute53>
                       parseRoute53 :: (Prelude.Maybe ParseRoute53Property),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsetoocsf>
                       parseToOCSF :: (Prelude.Maybe ParseToOCSFProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsevpc>
                       parseVPC :: (Prelude.Maybe ParseVPCProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsewaf>
                       parseWAF :: (Prelude.Maybe ParseWAFProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-renamekeys>
                       renameKeys :: (Prelude.Maybe RenameKeysProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-splitstring>
                       splitString :: (Prelude.Maybe SplitStringProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-substitutestring>
                       substituteString :: (Prelude.Maybe SubstituteStringProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-trimstring>
                       trimString :: (Prelude.Maybe TrimStringProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-typeconverter>
                       typeConverter :: (Prelude.Maybe TypeConverterProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-uppercasestring>
                       upperCaseString :: (Prelude.Maybe UpperCaseStringProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessorProperty :: ProcessorProperty
mkProcessorProperty
  = ProcessorProperty
      {haddock_workaround_ = (), addKeys = Prelude.Nothing,
       copyValue = Prelude.Nothing, csv = Prelude.Nothing,
       dateTimeConverter = Prelude.Nothing, deleteKeys = Prelude.Nothing,
       grok = Prelude.Nothing, listToMap = Prelude.Nothing,
       lowerCaseString = Prelude.Nothing, moveKeys = Prelude.Nothing,
       parseCloudfront = Prelude.Nothing, parseJSON = Prelude.Nothing,
       parseKeyValue = Prelude.Nothing, parsePostgres = Prelude.Nothing,
       parseRoute53 = Prelude.Nothing, parseToOCSF = Prelude.Nothing,
       parseVPC = Prelude.Nothing, parseWAF = Prelude.Nothing,
       renameKeys = Prelude.Nothing, splitString = Prelude.Nothing,
       substituteString = Prelude.Nothing, trimString = Prelude.Nothing,
       typeConverter = Prelude.Nothing, upperCaseString = Prelude.Nothing}
instance ToResourceProperties ProcessorProperty where
  toResourceProperties ProcessorProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.Processor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddKeys" Prelude.<$> addKeys,
                            (JSON..=) "CopyValue" Prelude.<$> copyValue,
                            (JSON..=) "Csv" Prelude.<$> csv,
                            (JSON..=) "DateTimeConverter" Prelude.<$> dateTimeConverter,
                            (JSON..=) "DeleteKeys" Prelude.<$> deleteKeys,
                            (JSON..=) "Grok" Prelude.<$> grok,
                            (JSON..=) "ListToMap" Prelude.<$> listToMap,
                            (JSON..=) "LowerCaseString" Prelude.<$> lowerCaseString,
                            (JSON..=) "MoveKeys" Prelude.<$> moveKeys,
                            (JSON..=) "ParseCloudfront" Prelude.<$> parseCloudfront,
                            (JSON..=) "ParseJSON" Prelude.<$> parseJSON,
                            (JSON..=) "ParseKeyValue" Prelude.<$> parseKeyValue,
                            (JSON..=) "ParsePostgres" Prelude.<$> parsePostgres,
                            (JSON..=) "ParseRoute53" Prelude.<$> parseRoute53,
                            (JSON..=) "ParseToOCSF" Prelude.<$> parseToOCSF,
                            (JSON..=) "ParseVPC" Prelude.<$> parseVPC,
                            (JSON..=) "ParseWAF" Prelude.<$> parseWAF,
                            (JSON..=) "RenameKeys" Prelude.<$> renameKeys,
                            (JSON..=) "SplitString" Prelude.<$> splitString,
                            (JSON..=) "SubstituteString" Prelude.<$> substituteString,
                            (JSON..=) "TrimString" Prelude.<$> trimString,
                            (JSON..=) "TypeConverter" Prelude.<$> typeConverter,
                            (JSON..=) "UpperCaseString" Prelude.<$> upperCaseString])}
instance JSON.ToJSON ProcessorProperty where
  toJSON ProcessorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddKeys" Prelude.<$> addKeys,
               (JSON..=) "CopyValue" Prelude.<$> copyValue,
               (JSON..=) "Csv" Prelude.<$> csv,
               (JSON..=) "DateTimeConverter" Prelude.<$> dateTimeConverter,
               (JSON..=) "DeleteKeys" Prelude.<$> deleteKeys,
               (JSON..=) "Grok" Prelude.<$> grok,
               (JSON..=) "ListToMap" Prelude.<$> listToMap,
               (JSON..=) "LowerCaseString" Prelude.<$> lowerCaseString,
               (JSON..=) "MoveKeys" Prelude.<$> moveKeys,
               (JSON..=) "ParseCloudfront" Prelude.<$> parseCloudfront,
               (JSON..=) "ParseJSON" Prelude.<$> parseJSON,
               (JSON..=) "ParseKeyValue" Prelude.<$> parseKeyValue,
               (JSON..=) "ParsePostgres" Prelude.<$> parsePostgres,
               (JSON..=) "ParseRoute53" Prelude.<$> parseRoute53,
               (JSON..=) "ParseToOCSF" Prelude.<$> parseToOCSF,
               (JSON..=) "ParseVPC" Prelude.<$> parseVPC,
               (JSON..=) "ParseWAF" Prelude.<$> parseWAF,
               (JSON..=) "RenameKeys" Prelude.<$> renameKeys,
               (JSON..=) "SplitString" Prelude.<$> splitString,
               (JSON..=) "SubstituteString" Prelude.<$> substituteString,
               (JSON..=) "TrimString" Prelude.<$> trimString,
               (JSON..=) "TypeConverter" Prelude.<$> typeConverter,
               (JSON..=) "UpperCaseString" Prelude.<$> upperCaseString]))
instance Property "AddKeys" ProcessorProperty where
  type PropertyType "AddKeys" ProcessorProperty = AddKeysProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {addKeys = Prelude.pure newValue, ..}
instance Property "CopyValue" ProcessorProperty where
  type PropertyType "CopyValue" ProcessorProperty = CopyValueProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {copyValue = Prelude.pure newValue, ..}
instance Property "Csv" ProcessorProperty where
  type PropertyType "Csv" ProcessorProperty = CsvProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {csv = Prelude.pure newValue, ..}
instance Property "DateTimeConverter" ProcessorProperty where
  type PropertyType "DateTimeConverter" ProcessorProperty = DateTimeConverterProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {dateTimeConverter = Prelude.pure newValue, ..}
instance Property "DeleteKeys" ProcessorProperty where
  type PropertyType "DeleteKeys" ProcessorProperty = DeleteKeysProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {deleteKeys = Prelude.pure newValue, ..}
instance Property "Grok" ProcessorProperty where
  type PropertyType "Grok" ProcessorProperty = GrokProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {grok = Prelude.pure newValue, ..}
instance Property "ListToMap" ProcessorProperty where
  type PropertyType "ListToMap" ProcessorProperty = ListToMapProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {listToMap = Prelude.pure newValue, ..}
instance Property "LowerCaseString" ProcessorProperty where
  type PropertyType "LowerCaseString" ProcessorProperty = LowerCaseStringProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {lowerCaseString = Prelude.pure newValue, ..}
instance Property "MoveKeys" ProcessorProperty where
  type PropertyType "MoveKeys" ProcessorProperty = MoveKeysProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {moveKeys = Prelude.pure newValue, ..}
instance Property "ParseCloudfront" ProcessorProperty where
  type PropertyType "ParseCloudfront" ProcessorProperty = ParseCloudfrontProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {parseCloudfront = Prelude.pure newValue, ..}
instance Property "ParseJSON" ProcessorProperty where
  type PropertyType "ParseJSON" ProcessorProperty = ParseJSONProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {parseJSON = Prelude.pure newValue, ..}
instance Property "ParseKeyValue" ProcessorProperty where
  type PropertyType "ParseKeyValue" ProcessorProperty = ParseKeyValueProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {parseKeyValue = Prelude.pure newValue, ..}
instance Property "ParsePostgres" ProcessorProperty where
  type PropertyType "ParsePostgres" ProcessorProperty = ParsePostgresProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {parsePostgres = Prelude.pure newValue, ..}
instance Property "ParseRoute53" ProcessorProperty where
  type PropertyType "ParseRoute53" ProcessorProperty = ParseRoute53Property
  set newValue ProcessorProperty {..}
    = ProcessorProperty {parseRoute53 = Prelude.pure newValue, ..}
instance Property "ParseToOCSF" ProcessorProperty where
  type PropertyType "ParseToOCSF" ProcessorProperty = ParseToOCSFProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {parseToOCSF = Prelude.pure newValue, ..}
instance Property "ParseVPC" ProcessorProperty where
  type PropertyType "ParseVPC" ProcessorProperty = ParseVPCProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {parseVPC = Prelude.pure newValue, ..}
instance Property "ParseWAF" ProcessorProperty where
  type PropertyType "ParseWAF" ProcessorProperty = ParseWAFProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {parseWAF = Prelude.pure newValue, ..}
instance Property "RenameKeys" ProcessorProperty where
  type PropertyType "RenameKeys" ProcessorProperty = RenameKeysProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {renameKeys = Prelude.pure newValue, ..}
instance Property "SplitString" ProcessorProperty where
  type PropertyType "SplitString" ProcessorProperty = SplitStringProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {splitString = Prelude.pure newValue, ..}
instance Property "SubstituteString" ProcessorProperty where
  type PropertyType "SubstituteString" ProcessorProperty = SubstituteStringProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {substituteString = Prelude.pure newValue, ..}
instance Property "TrimString" ProcessorProperty where
  type PropertyType "TrimString" ProcessorProperty = TrimStringProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {trimString = Prelude.pure newValue, ..}
instance Property "TypeConverter" ProcessorProperty where
  type PropertyType "TypeConverter" ProcessorProperty = TypeConverterProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {typeConverter = Prelude.pure newValue, ..}
instance Property "UpperCaseString" ProcessorProperty where
  type PropertyType "UpperCaseString" ProcessorProperty = UpperCaseStringProperty
  set newValue ProcessorProperty {..}
    = ProcessorProperty {upperCaseString = Prelude.pure newValue, ..}