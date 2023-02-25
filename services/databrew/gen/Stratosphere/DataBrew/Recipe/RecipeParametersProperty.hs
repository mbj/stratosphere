module Stratosphere.DataBrew.Recipe.RecipeParametersProperty (
        module Exports, RecipeParametersProperty(..),
        mkRecipeParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.InputProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.SecondaryInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecipeParametersProperty
  = RecipeParametersProperty {aggregateFunction :: (Prelude.Maybe (Value Prelude.Text)),
                              base :: (Prelude.Maybe (Value Prelude.Text)),
                              caseStatement :: (Prelude.Maybe (Value Prelude.Text)),
                              categoryMap :: (Prelude.Maybe (Value Prelude.Text)),
                              charsToRemove :: (Prelude.Maybe (Value Prelude.Text)),
                              collapseConsecutiveWhitespace :: (Prelude.Maybe (Value Prelude.Text)),
                              columnDataType :: (Prelude.Maybe (Value Prelude.Text)),
                              columnRange :: (Prelude.Maybe (Value Prelude.Text)),
                              count :: (Prelude.Maybe (Value Prelude.Text)),
                              customCharacters :: (Prelude.Maybe (Value Prelude.Text)),
                              customStopWords :: (Prelude.Maybe (Value Prelude.Text)),
                              customValue :: (Prelude.Maybe (Value Prelude.Text)),
                              datasetsColumns :: (Prelude.Maybe (Value Prelude.Text)),
                              dateAddValue :: (Prelude.Maybe (Value Prelude.Text)),
                              dateTimeFormat :: (Prelude.Maybe (Value Prelude.Text)),
                              dateTimeParameters :: (Prelude.Maybe (Value Prelude.Text)),
                              deleteOtherRows :: (Prelude.Maybe (Value Prelude.Text)),
                              delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                              endPattern :: (Prelude.Maybe (Value Prelude.Text)),
                              endPosition :: (Prelude.Maybe (Value Prelude.Text)),
                              endValue :: (Prelude.Maybe (Value Prelude.Text)),
                              expandContractions :: (Prelude.Maybe (Value Prelude.Text)),
                              exponent :: (Prelude.Maybe (Value Prelude.Text)),
                              falseString :: (Prelude.Maybe (Value Prelude.Text)),
                              groupByAggFunctionOptions :: (Prelude.Maybe (Value Prelude.Text)),
                              groupByColumns :: (Prelude.Maybe (Value Prelude.Text)),
                              hiddenColumns :: (Prelude.Maybe (Value Prelude.Text)),
                              ignoreCase :: (Prelude.Maybe (Value Prelude.Text)),
                              includeInSplit :: (Prelude.Maybe (Value Prelude.Text)),
                              input :: (Prelude.Maybe InputProperty),
                              interval :: (Prelude.Maybe (Value Prelude.Text)),
                              isText :: (Prelude.Maybe (Value Prelude.Text)),
                              joinKeys :: (Prelude.Maybe (Value Prelude.Text)),
                              joinType :: (Prelude.Maybe (Value Prelude.Text)),
                              leftColumns :: (Prelude.Maybe (Value Prelude.Text)),
                              limit :: (Prelude.Maybe (Value Prelude.Text)),
                              lowerBound :: (Prelude.Maybe (Value Prelude.Text)),
                              mapType :: (Prelude.Maybe (Value Prelude.Text)),
                              modeType :: (Prelude.Maybe (Value Prelude.Text)),
                              multiLine :: (Prelude.Maybe (Value Prelude.Bool)),
                              numRows :: (Prelude.Maybe (Value Prelude.Text)),
                              numRowsAfter :: (Prelude.Maybe (Value Prelude.Text)),
                              numRowsBefore :: (Prelude.Maybe (Value Prelude.Text)),
                              orderByColumn :: (Prelude.Maybe (Value Prelude.Text)),
                              orderByColumns :: (Prelude.Maybe (Value Prelude.Text)),
                              other :: (Prelude.Maybe (Value Prelude.Text)),
                              pattern :: (Prelude.Maybe (Value Prelude.Text)),
                              patternOption1 :: (Prelude.Maybe (Value Prelude.Text)),
                              patternOption2 :: (Prelude.Maybe (Value Prelude.Text)),
                              patternOptions :: (Prelude.Maybe (Value Prelude.Text)),
                              period :: (Prelude.Maybe (Value Prelude.Text)),
                              position :: (Prelude.Maybe (Value Prelude.Text)),
                              removeAllPunctuation :: (Prelude.Maybe (Value Prelude.Text)),
                              removeAllQuotes :: (Prelude.Maybe (Value Prelude.Text)),
                              removeAllWhitespace :: (Prelude.Maybe (Value Prelude.Text)),
                              removeCustomCharacters :: (Prelude.Maybe (Value Prelude.Text)),
                              removeCustomValue :: (Prelude.Maybe (Value Prelude.Text)),
                              removeLeadingAndTrailingPunctuation :: (Prelude.Maybe (Value Prelude.Text)),
                              removeLeadingAndTrailingQuotes :: (Prelude.Maybe (Value Prelude.Text)),
                              removeLeadingAndTrailingWhitespace :: (Prelude.Maybe (Value Prelude.Text)),
                              removeLetters :: (Prelude.Maybe (Value Prelude.Text)),
                              removeNumbers :: (Prelude.Maybe (Value Prelude.Text)),
                              removeSourceColumn :: (Prelude.Maybe (Value Prelude.Text)),
                              removeSpecialCharacters :: (Prelude.Maybe (Value Prelude.Text)),
                              rightColumns :: (Prelude.Maybe (Value Prelude.Text)),
                              sampleSize :: (Prelude.Maybe (Value Prelude.Text)),
                              sampleType :: (Prelude.Maybe (Value Prelude.Text)),
                              secondInput :: (Prelude.Maybe (Value Prelude.Text)),
                              secondaryInputs :: (Prelude.Maybe [SecondaryInputProperty]),
                              sheetIndexes :: (Prelude.Maybe (ValueList (Value Prelude.Integer))),
                              sheetNames :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                              sourceColumn :: (Prelude.Maybe (Value Prelude.Text)),
                              sourceColumn1 :: (Prelude.Maybe (Value Prelude.Text)),
                              sourceColumn2 :: (Prelude.Maybe (Value Prelude.Text)),
                              sourceColumns :: (Prelude.Maybe (Value Prelude.Text)),
                              startColumnIndex :: (Prelude.Maybe (Value Prelude.Text)),
                              startPattern :: (Prelude.Maybe (Value Prelude.Text)),
                              startPosition :: (Prelude.Maybe (Value Prelude.Text)),
                              startValue :: (Prelude.Maybe (Value Prelude.Text)),
                              stemmingMode :: (Prelude.Maybe (Value Prelude.Text)),
                              stepCount :: (Prelude.Maybe (Value Prelude.Text)),
                              stepIndex :: (Prelude.Maybe (Value Prelude.Text)),
                              stopWordsMode :: (Prelude.Maybe (Value Prelude.Text)),
                              strategy :: (Prelude.Maybe (Value Prelude.Text)),
                              targetColumn :: (Prelude.Maybe (Value Prelude.Text)),
                              targetColumnNames :: (Prelude.Maybe (Value Prelude.Text)),
                              targetDateFormat :: (Prelude.Maybe (Value Prelude.Text)),
                              targetIndex :: (Prelude.Maybe (Value Prelude.Text)),
                              timeZone :: (Prelude.Maybe (Value Prelude.Text)),
                              tokenizerPattern :: (Prelude.Maybe (Value Prelude.Text)),
                              trueString :: (Prelude.Maybe (Value Prelude.Text)),
                              udfLang :: (Prelude.Maybe (Value Prelude.Text)),
                              units :: (Prelude.Maybe (Value Prelude.Text)),
                              unpivotColumn :: (Prelude.Maybe (Value Prelude.Text)),
                              upperBound :: (Prelude.Maybe (Value Prelude.Text)),
                              useNewDataFrame :: (Prelude.Maybe (Value Prelude.Text)),
                              value :: (Prelude.Maybe (Value Prelude.Text)),
                              value1 :: (Prelude.Maybe (Value Prelude.Text)),
                              value2 :: (Prelude.Maybe (Value Prelude.Text)),
                              valueColumn :: (Prelude.Maybe (Value Prelude.Text)),
                              viewFrame :: (Prelude.Maybe (Value Prelude.Text))}
mkRecipeParametersProperty :: RecipeParametersProperty
mkRecipeParametersProperty
  = RecipeParametersProperty
      {aggregateFunction = Prelude.Nothing, base = Prelude.Nothing,
       caseStatement = Prelude.Nothing, categoryMap = Prelude.Nothing,
       charsToRemove = Prelude.Nothing,
       collapseConsecutiveWhitespace = Prelude.Nothing,
       columnDataType = Prelude.Nothing, columnRange = Prelude.Nothing,
       count = Prelude.Nothing, customCharacters = Prelude.Nothing,
       customStopWords = Prelude.Nothing, customValue = Prelude.Nothing,
       datasetsColumns = Prelude.Nothing, dateAddValue = Prelude.Nothing,
       dateTimeFormat = Prelude.Nothing,
       dateTimeParameters = Prelude.Nothing,
       deleteOtherRows = Prelude.Nothing, delimiter = Prelude.Nothing,
       endPattern = Prelude.Nothing, endPosition = Prelude.Nothing,
       endValue = Prelude.Nothing, expandContractions = Prelude.Nothing,
       exponent = Prelude.Nothing, falseString = Prelude.Nothing,
       groupByAggFunctionOptions = Prelude.Nothing,
       groupByColumns = Prelude.Nothing, hiddenColumns = Prelude.Nothing,
       ignoreCase = Prelude.Nothing, includeInSplit = Prelude.Nothing,
       input = Prelude.Nothing, interval = Prelude.Nothing,
       isText = Prelude.Nothing, joinKeys = Prelude.Nothing,
       joinType = Prelude.Nothing, leftColumns = Prelude.Nothing,
       limit = Prelude.Nothing, lowerBound = Prelude.Nothing,
       mapType = Prelude.Nothing, modeType = Prelude.Nothing,
       multiLine = Prelude.Nothing, numRows = Prelude.Nothing,
       numRowsAfter = Prelude.Nothing, numRowsBefore = Prelude.Nothing,
       orderByColumn = Prelude.Nothing, orderByColumns = Prelude.Nothing,
       other = Prelude.Nothing, pattern = Prelude.Nothing,
       patternOption1 = Prelude.Nothing, patternOption2 = Prelude.Nothing,
       patternOptions = Prelude.Nothing, period = Prelude.Nothing,
       position = Prelude.Nothing, removeAllPunctuation = Prelude.Nothing,
       removeAllQuotes = Prelude.Nothing,
       removeAllWhitespace = Prelude.Nothing,
       removeCustomCharacters = Prelude.Nothing,
       removeCustomValue = Prelude.Nothing,
       removeLeadingAndTrailingPunctuation = Prelude.Nothing,
       removeLeadingAndTrailingQuotes = Prelude.Nothing,
       removeLeadingAndTrailingWhitespace = Prelude.Nothing,
       removeLetters = Prelude.Nothing, removeNumbers = Prelude.Nothing,
       removeSourceColumn = Prelude.Nothing,
       removeSpecialCharacters = Prelude.Nothing,
       rightColumns = Prelude.Nothing, sampleSize = Prelude.Nothing,
       sampleType = Prelude.Nothing, secondInput = Prelude.Nothing,
       secondaryInputs = Prelude.Nothing, sheetIndexes = Prelude.Nothing,
       sheetNames = Prelude.Nothing, sourceColumn = Prelude.Nothing,
       sourceColumn1 = Prelude.Nothing, sourceColumn2 = Prelude.Nothing,
       sourceColumns = Prelude.Nothing,
       startColumnIndex = Prelude.Nothing, startPattern = Prelude.Nothing,
       startPosition = Prelude.Nothing, startValue = Prelude.Nothing,
       stemmingMode = Prelude.Nothing, stepCount = Prelude.Nothing,
       stepIndex = Prelude.Nothing, stopWordsMode = Prelude.Nothing,
       strategy = Prelude.Nothing, targetColumn = Prelude.Nothing,
       targetColumnNames = Prelude.Nothing,
       targetDateFormat = Prelude.Nothing, targetIndex = Prelude.Nothing,
       timeZone = Prelude.Nothing, tokenizerPattern = Prelude.Nothing,
       trueString = Prelude.Nothing, udfLang = Prelude.Nothing,
       units = Prelude.Nothing, unpivotColumn = Prelude.Nothing,
       upperBound = Prelude.Nothing, useNewDataFrame = Prelude.Nothing,
       value = Prelude.Nothing, value1 = Prelude.Nothing,
       value2 = Prelude.Nothing, valueColumn = Prelude.Nothing,
       viewFrame = Prelude.Nothing}
instance ToResourceProperties RecipeParametersProperty where
  toResourceProperties RecipeParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Recipe.RecipeParameters",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AggregateFunction" Prelude.<$> aggregateFunction,
                            (JSON..=) "Base" Prelude.<$> base,
                            (JSON..=) "CaseStatement" Prelude.<$> caseStatement,
                            (JSON..=) "CategoryMap" Prelude.<$> categoryMap,
                            (JSON..=) "CharsToRemove" Prelude.<$> charsToRemove,
                            (JSON..=) "CollapseConsecutiveWhitespace"
                              Prelude.<$> collapseConsecutiveWhitespace,
                            (JSON..=) "ColumnDataType" Prelude.<$> columnDataType,
                            (JSON..=) "ColumnRange" Prelude.<$> columnRange,
                            (JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "CustomCharacters" Prelude.<$> customCharacters,
                            (JSON..=) "CustomStopWords" Prelude.<$> customStopWords,
                            (JSON..=) "CustomValue" Prelude.<$> customValue,
                            (JSON..=) "DatasetsColumns" Prelude.<$> datasetsColumns,
                            (JSON..=) "DateAddValue" Prelude.<$> dateAddValue,
                            (JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
                            (JSON..=) "DateTimeParameters" Prelude.<$> dateTimeParameters,
                            (JSON..=) "DeleteOtherRows" Prelude.<$> deleteOtherRows,
                            (JSON..=) "Delimiter" Prelude.<$> delimiter,
                            (JSON..=) "EndPattern" Prelude.<$> endPattern,
                            (JSON..=) "EndPosition" Prelude.<$> endPosition,
                            (JSON..=) "EndValue" Prelude.<$> endValue,
                            (JSON..=) "ExpandContractions" Prelude.<$> expandContractions,
                            (JSON..=) "Exponent" Prelude.<$> exponent,
                            (JSON..=) "FalseString" Prelude.<$> falseString,
                            (JSON..=) "GroupByAggFunctionOptions"
                              Prelude.<$> groupByAggFunctionOptions,
                            (JSON..=) "GroupByColumns" Prelude.<$> groupByColumns,
                            (JSON..=) "HiddenColumns" Prelude.<$> hiddenColumns,
                            (JSON..=) "IgnoreCase" Prelude.<$> ignoreCase,
                            (JSON..=) "IncludeInSplit" Prelude.<$> includeInSplit,
                            (JSON..=) "Input" Prelude.<$> input,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "IsText" Prelude.<$> isText,
                            (JSON..=) "JoinKeys" Prelude.<$> joinKeys,
                            (JSON..=) "JoinType" Prelude.<$> joinType,
                            (JSON..=) "LeftColumns" Prelude.<$> leftColumns,
                            (JSON..=) "Limit" Prelude.<$> limit,
                            (JSON..=) "LowerBound" Prelude.<$> lowerBound,
                            (JSON..=) "MapType" Prelude.<$> mapType,
                            (JSON..=) "ModeType" Prelude.<$> modeType,
                            (JSON..=) "MultiLine" Prelude.<$> multiLine,
                            (JSON..=) "NumRows" Prelude.<$> numRows,
                            (JSON..=) "NumRowsAfter" Prelude.<$> numRowsAfter,
                            (JSON..=) "NumRowsBefore" Prelude.<$> numRowsBefore,
                            (JSON..=) "OrderByColumn" Prelude.<$> orderByColumn,
                            (JSON..=) "OrderByColumns" Prelude.<$> orderByColumns,
                            (JSON..=) "Other" Prelude.<$> other,
                            (JSON..=) "Pattern" Prelude.<$> pattern,
                            (JSON..=) "PatternOption1" Prelude.<$> patternOption1,
                            (JSON..=) "PatternOption2" Prelude.<$> patternOption2,
                            (JSON..=) "PatternOptions" Prelude.<$> patternOptions,
                            (JSON..=) "Period" Prelude.<$> period,
                            (JSON..=) "Position" Prelude.<$> position,
                            (JSON..=) "RemoveAllPunctuation" Prelude.<$> removeAllPunctuation,
                            (JSON..=) "RemoveAllQuotes" Prelude.<$> removeAllQuotes,
                            (JSON..=) "RemoveAllWhitespace" Prelude.<$> removeAllWhitespace,
                            (JSON..=) "RemoveCustomCharacters"
                              Prelude.<$> removeCustomCharacters,
                            (JSON..=) "RemoveCustomValue" Prelude.<$> removeCustomValue,
                            (JSON..=) "RemoveLeadingAndTrailingPunctuation"
                              Prelude.<$> removeLeadingAndTrailingPunctuation,
                            (JSON..=) "RemoveLeadingAndTrailingQuotes"
                              Prelude.<$> removeLeadingAndTrailingQuotes,
                            (JSON..=) "RemoveLeadingAndTrailingWhitespace"
                              Prelude.<$> removeLeadingAndTrailingWhitespace,
                            (JSON..=) "RemoveLetters" Prelude.<$> removeLetters,
                            (JSON..=) "RemoveNumbers" Prelude.<$> removeNumbers,
                            (JSON..=) "RemoveSourceColumn" Prelude.<$> removeSourceColumn,
                            (JSON..=) "RemoveSpecialCharacters"
                              Prelude.<$> removeSpecialCharacters,
                            (JSON..=) "RightColumns" Prelude.<$> rightColumns,
                            (JSON..=) "SampleSize" Prelude.<$> sampleSize,
                            (JSON..=) "SampleType" Prelude.<$> sampleType,
                            (JSON..=) "SecondInput" Prelude.<$> secondInput,
                            (JSON..=) "SecondaryInputs" Prelude.<$> secondaryInputs,
                            (JSON..=) "SheetIndexes" Prelude.<$> sheetIndexes,
                            (JSON..=) "SheetNames" Prelude.<$> sheetNames,
                            (JSON..=) "SourceColumn" Prelude.<$> sourceColumn,
                            (JSON..=) "SourceColumn1" Prelude.<$> sourceColumn1,
                            (JSON..=) "SourceColumn2" Prelude.<$> sourceColumn2,
                            (JSON..=) "SourceColumns" Prelude.<$> sourceColumns,
                            (JSON..=) "StartColumnIndex" Prelude.<$> startColumnIndex,
                            (JSON..=) "StartPattern" Prelude.<$> startPattern,
                            (JSON..=) "StartPosition" Prelude.<$> startPosition,
                            (JSON..=) "StartValue" Prelude.<$> startValue,
                            (JSON..=) "StemmingMode" Prelude.<$> stemmingMode,
                            (JSON..=) "StepCount" Prelude.<$> stepCount,
                            (JSON..=) "StepIndex" Prelude.<$> stepIndex,
                            (JSON..=) "StopWordsMode" Prelude.<$> stopWordsMode,
                            (JSON..=) "Strategy" Prelude.<$> strategy,
                            (JSON..=) "TargetColumn" Prelude.<$> targetColumn,
                            (JSON..=) "TargetColumnNames" Prelude.<$> targetColumnNames,
                            (JSON..=) "TargetDateFormat" Prelude.<$> targetDateFormat,
                            (JSON..=) "TargetIndex" Prelude.<$> targetIndex,
                            (JSON..=) "TimeZone" Prelude.<$> timeZone,
                            (JSON..=) "TokenizerPattern" Prelude.<$> tokenizerPattern,
                            (JSON..=) "TrueString" Prelude.<$> trueString,
                            (JSON..=) "UdfLang" Prelude.<$> udfLang,
                            (JSON..=) "Units" Prelude.<$> units,
                            (JSON..=) "UnpivotColumn" Prelude.<$> unpivotColumn,
                            (JSON..=) "UpperBound" Prelude.<$> upperBound,
                            (JSON..=) "UseNewDataFrame" Prelude.<$> useNewDataFrame,
                            (JSON..=) "Value" Prelude.<$> value,
                            (JSON..=) "Value1" Prelude.<$> value1,
                            (JSON..=) "Value2" Prelude.<$> value2,
                            (JSON..=) "ValueColumn" Prelude.<$> valueColumn,
                            (JSON..=) "ViewFrame" Prelude.<$> viewFrame])}
instance JSON.ToJSON RecipeParametersProperty where
  toJSON RecipeParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AggregateFunction" Prelude.<$> aggregateFunction,
               (JSON..=) "Base" Prelude.<$> base,
               (JSON..=) "CaseStatement" Prelude.<$> caseStatement,
               (JSON..=) "CategoryMap" Prelude.<$> categoryMap,
               (JSON..=) "CharsToRemove" Prelude.<$> charsToRemove,
               (JSON..=) "CollapseConsecutiveWhitespace"
                 Prelude.<$> collapseConsecutiveWhitespace,
               (JSON..=) "ColumnDataType" Prelude.<$> columnDataType,
               (JSON..=) "ColumnRange" Prelude.<$> columnRange,
               (JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "CustomCharacters" Prelude.<$> customCharacters,
               (JSON..=) "CustomStopWords" Prelude.<$> customStopWords,
               (JSON..=) "CustomValue" Prelude.<$> customValue,
               (JSON..=) "DatasetsColumns" Prelude.<$> datasetsColumns,
               (JSON..=) "DateAddValue" Prelude.<$> dateAddValue,
               (JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
               (JSON..=) "DateTimeParameters" Prelude.<$> dateTimeParameters,
               (JSON..=) "DeleteOtherRows" Prelude.<$> deleteOtherRows,
               (JSON..=) "Delimiter" Prelude.<$> delimiter,
               (JSON..=) "EndPattern" Prelude.<$> endPattern,
               (JSON..=) "EndPosition" Prelude.<$> endPosition,
               (JSON..=) "EndValue" Prelude.<$> endValue,
               (JSON..=) "ExpandContractions" Prelude.<$> expandContractions,
               (JSON..=) "Exponent" Prelude.<$> exponent,
               (JSON..=) "FalseString" Prelude.<$> falseString,
               (JSON..=) "GroupByAggFunctionOptions"
                 Prelude.<$> groupByAggFunctionOptions,
               (JSON..=) "GroupByColumns" Prelude.<$> groupByColumns,
               (JSON..=) "HiddenColumns" Prelude.<$> hiddenColumns,
               (JSON..=) "IgnoreCase" Prelude.<$> ignoreCase,
               (JSON..=) "IncludeInSplit" Prelude.<$> includeInSplit,
               (JSON..=) "Input" Prelude.<$> input,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "IsText" Prelude.<$> isText,
               (JSON..=) "JoinKeys" Prelude.<$> joinKeys,
               (JSON..=) "JoinType" Prelude.<$> joinType,
               (JSON..=) "LeftColumns" Prelude.<$> leftColumns,
               (JSON..=) "Limit" Prelude.<$> limit,
               (JSON..=) "LowerBound" Prelude.<$> lowerBound,
               (JSON..=) "MapType" Prelude.<$> mapType,
               (JSON..=) "ModeType" Prelude.<$> modeType,
               (JSON..=) "MultiLine" Prelude.<$> multiLine,
               (JSON..=) "NumRows" Prelude.<$> numRows,
               (JSON..=) "NumRowsAfter" Prelude.<$> numRowsAfter,
               (JSON..=) "NumRowsBefore" Prelude.<$> numRowsBefore,
               (JSON..=) "OrderByColumn" Prelude.<$> orderByColumn,
               (JSON..=) "OrderByColumns" Prelude.<$> orderByColumns,
               (JSON..=) "Other" Prelude.<$> other,
               (JSON..=) "Pattern" Prelude.<$> pattern,
               (JSON..=) "PatternOption1" Prelude.<$> patternOption1,
               (JSON..=) "PatternOption2" Prelude.<$> patternOption2,
               (JSON..=) "PatternOptions" Prelude.<$> patternOptions,
               (JSON..=) "Period" Prelude.<$> period,
               (JSON..=) "Position" Prelude.<$> position,
               (JSON..=) "RemoveAllPunctuation" Prelude.<$> removeAllPunctuation,
               (JSON..=) "RemoveAllQuotes" Prelude.<$> removeAllQuotes,
               (JSON..=) "RemoveAllWhitespace" Prelude.<$> removeAllWhitespace,
               (JSON..=) "RemoveCustomCharacters"
                 Prelude.<$> removeCustomCharacters,
               (JSON..=) "RemoveCustomValue" Prelude.<$> removeCustomValue,
               (JSON..=) "RemoveLeadingAndTrailingPunctuation"
                 Prelude.<$> removeLeadingAndTrailingPunctuation,
               (JSON..=) "RemoveLeadingAndTrailingQuotes"
                 Prelude.<$> removeLeadingAndTrailingQuotes,
               (JSON..=) "RemoveLeadingAndTrailingWhitespace"
                 Prelude.<$> removeLeadingAndTrailingWhitespace,
               (JSON..=) "RemoveLetters" Prelude.<$> removeLetters,
               (JSON..=) "RemoveNumbers" Prelude.<$> removeNumbers,
               (JSON..=) "RemoveSourceColumn" Prelude.<$> removeSourceColumn,
               (JSON..=) "RemoveSpecialCharacters"
                 Prelude.<$> removeSpecialCharacters,
               (JSON..=) "RightColumns" Prelude.<$> rightColumns,
               (JSON..=) "SampleSize" Prelude.<$> sampleSize,
               (JSON..=) "SampleType" Prelude.<$> sampleType,
               (JSON..=) "SecondInput" Prelude.<$> secondInput,
               (JSON..=) "SecondaryInputs" Prelude.<$> secondaryInputs,
               (JSON..=) "SheetIndexes" Prelude.<$> sheetIndexes,
               (JSON..=) "SheetNames" Prelude.<$> sheetNames,
               (JSON..=) "SourceColumn" Prelude.<$> sourceColumn,
               (JSON..=) "SourceColumn1" Prelude.<$> sourceColumn1,
               (JSON..=) "SourceColumn2" Prelude.<$> sourceColumn2,
               (JSON..=) "SourceColumns" Prelude.<$> sourceColumns,
               (JSON..=) "StartColumnIndex" Prelude.<$> startColumnIndex,
               (JSON..=) "StartPattern" Prelude.<$> startPattern,
               (JSON..=) "StartPosition" Prelude.<$> startPosition,
               (JSON..=) "StartValue" Prelude.<$> startValue,
               (JSON..=) "StemmingMode" Prelude.<$> stemmingMode,
               (JSON..=) "StepCount" Prelude.<$> stepCount,
               (JSON..=) "StepIndex" Prelude.<$> stepIndex,
               (JSON..=) "StopWordsMode" Prelude.<$> stopWordsMode,
               (JSON..=) "Strategy" Prelude.<$> strategy,
               (JSON..=) "TargetColumn" Prelude.<$> targetColumn,
               (JSON..=) "TargetColumnNames" Prelude.<$> targetColumnNames,
               (JSON..=) "TargetDateFormat" Prelude.<$> targetDateFormat,
               (JSON..=) "TargetIndex" Prelude.<$> targetIndex,
               (JSON..=) "TimeZone" Prelude.<$> timeZone,
               (JSON..=) "TokenizerPattern" Prelude.<$> tokenizerPattern,
               (JSON..=) "TrueString" Prelude.<$> trueString,
               (JSON..=) "UdfLang" Prelude.<$> udfLang,
               (JSON..=) "Units" Prelude.<$> units,
               (JSON..=) "UnpivotColumn" Prelude.<$> unpivotColumn,
               (JSON..=) "UpperBound" Prelude.<$> upperBound,
               (JSON..=) "UseNewDataFrame" Prelude.<$> useNewDataFrame,
               (JSON..=) "Value" Prelude.<$> value,
               (JSON..=) "Value1" Prelude.<$> value1,
               (JSON..=) "Value2" Prelude.<$> value2,
               (JSON..=) "ValueColumn" Prelude.<$> valueColumn,
               (JSON..=) "ViewFrame" Prelude.<$> viewFrame]))
instance Property "AggregateFunction" RecipeParametersProperty where
  type PropertyType "AggregateFunction" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {aggregateFunction = Prelude.pure newValue, ..}
instance Property "Base" RecipeParametersProperty where
  type PropertyType "Base" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {base = Prelude.pure newValue, ..}
instance Property "CaseStatement" RecipeParametersProperty where
  type PropertyType "CaseStatement" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {caseStatement = Prelude.pure newValue, ..}
instance Property "CategoryMap" RecipeParametersProperty where
  type PropertyType "CategoryMap" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {categoryMap = Prelude.pure newValue, ..}
instance Property "CharsToRemove" RecipeParametersProperty where
  type PropertyType "CharsToRemove" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {charsToRemove = Prelude.pure newValue, ..}
instance Property "CollapseConsecutiveWhitespace" RecipeParametersProperty where
  type PropertyType "CollapseConsecutiveWhitespace" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {collapseConsecutiveWhitespace = Prelude.pure newValue, ..}
instance Property "ColumnDataType" RecipeParametersProperty where
  type PropertyType "ColumnDataType" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {columnDataType = Prelude.pure newValue, ..}
instance Property "ColumnRange" RecipeParametersProperty where
  type PropertyType "ColumnRange" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {columnRange = Prelude.pure newValue, ..}
instance Property "Count" RecipeParametersProperty where
  type PropertyType "Count" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {count = Prelude.pure newValue, ..}
instance Property "CustomCharacters" RecipeParametersProperty where
  type PropertyType "CustomCharacters" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {customCharacters = Prelude.pure newValue, ..}
instance Property "CustomStopWords" RecipeParametersProperty where
  type PropertyType "CustomStopWords" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {customStopWords = Prelude.pure newValue, ..}
instance Property "CustomValue" RecipeParametersProperty where
  type PropertyType "CustomValue" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {customValue = Prelude.pure newValue, ..}
instance Property "DatasetsColumns" RecipeParametersProperty where
  type PropertyType "DatasetsColumns" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {datasetsColumns = Prelude.pure newValue, ..}
instance Property "DateAddValue" RecipeParametersProperty where
  type PropertyType "DateAddValue" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {dateAddValue = Prelude.pure newValue, ..}
instance Property "DateTimeFormat" RecipeParametersProperty where
  type PropertyType "DateTimeFormat" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {dateTimeFormat = Prelude.pure newValue, ..}
instance Property "DateTimeParameters" RecipeParametersProperty where
  type PropertyType "DateTimeParameters" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {dateTimeParameters = Prelude.pure newValue, ..}
instance Property "DeleteOtherRows" RecipeParametersProperty where
  type PropertyType "DeleteOtherRows" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {deleteOtherRows = Prelude.pure newValue, ..}
instance Property "Delimiter" RecipeParametersProperty where
  type PropertyType "Delimiter" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {delimiter = Prelude.pure newValue, ..}
instance Property "EndPattern" RecipeParametersProperty where
  type PropertyType "EndPattern" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {endPattern = Prelude.pure newValue, ..}
instance Property "EndPosition" RecipeParametersProperty where
  type PropertyType "EndPosition" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {endPosition = Prelude.pure newValue, ..}
instance Property "EndValue" RecipeParametersProperty where
  type PropertyType "EndValue" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {endValue = Prelude.pure newValue, ..}
instance Property "ExpandContractions" RecipeParametersProperty where
  type PropertyType "ExpandContractions" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {expandContractions = Prelude.pure newValue, ..}
instance Property "Exponent" RecipeParametersProperty where
  type PropertyType "Exponent" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {exponent = Prelude.pure newValue, ..}
instance Property "FalseString" RecipeParametersProperty where
  type PropertyType "FalseString" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {falseString = Prelude.pure newValue, ..}
instance Property "GroupByAggFunctionOptions" RecipeParametersProperty where
  type PropertyType "GroupByAggFunctionOptions" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {groupByAggFunctionOptions = Prelude.pure newValue, ..}
instance Property "GroupByColumns" RecipeParametersProperty where
  type PropertyType "GroupByColumns" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {groupByColumns = Prelude.pure newValue, ..}
instance Property "HiddenColumns" RecipeParametersProperty where
  type PropertyType "HiddenColumns" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {hiddenColumns = Prelude.pure newValue, ..}
instance Property "IgnoreCase" RecipeParametersProperty where
  type PropertyType "IgnoreCase" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {ignoreCase = Prelude.pure newValue, ..}
instance Property "IncludeInSplit" RecipeParametersProperty where
  type PropertyType "IncludeInSplit" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {includeInSplit = Prelude.pure newValue, ..}
instance Property "Input" RecipeParametersProperty where
  type PropertyType "Input" RecipeParametersProperty = InputProperty
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {input = Prelude.pure newValue, ..}
instance Property "Interval" RecipeParametersProperty where
  type PropertyType "Interval" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {interval = Prelude.pure newValue, ..}
instance Property "IsText" RecipeParametersProperty where
  type PropertyType "IsText" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {isText = Prelude.pure newValue, ..}
instance Property "JoinKeys" RecipeParametersProperty where
  type PropertyType "JoinKeys" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {joinKeys = Prelude.pure newValue, ..}
instance Property "JoinType" RecipeParametersProperty where
  type PropertyType "JoinType" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {joinType = Prelude.pure newValue, ..}
instance Property "LeftColumns" RecipeParametersProperty where
  type PropertyType "LeftColumns" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {leftColumns = Prelude.pure newValue, ..}
instance Property "Limit" RecipeParametersProperty where
  type PropertyType "Limit" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {limit = Prelude.pure newValue, ..}
instance Property "LowerBound" RecipeParametersProperty where
  type PropertyType "LowerBound" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {lowerBound = Prelude.pure newValue, ..}
instance Property "MapType" RecipeParametersProperty where
  type PropertyType "MapType" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {mapType = Prelude.pure newValue, ..}
instance Property "ModeType" RecipeParametersProperty where
  type PropertyType "ModeType" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {modeType = Prelude.pure newValue, ..}
instance Property "MultiLine" RecipeParametersProperty where
  type PropertyType "MultiLine" RecipeParametersProperty = Value Prelude.Bool
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {multiLine = Prelude.pure newValue, ..}
instance Property "NumRows" RecipeParametersProperty where
  type PropertyType "NumRows" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {numRows = Prelude.pure newValue, ..}
instance Property "NumRowsAfter" RecipeParametersProperty where
  type PropertyType "NumRowsAfter" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {numRowsAfter = Prelude.pure newValue, ..}
instance Property "NumRowsBefore" RecipeParametersProperty where
  type PropertyType "NumRowsBefore" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {numRowsBefore = Prelude.pure newValue, ..}
instance Property "OrderByColumn" RecipeParametersProperty where
  type PropertyType "OrderByColumn" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {orderByColumn = Prelude.pure newValue, ..}
instance Property "OrderByColumns" RecipeParametersProperty where
  type PropertyType "OrderByColumns" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {orderByColumns = Prelude.pure newValue, ..}
instance Property "Other" RecipeParametersProperty where
  type PropertyType "Other" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {other = Prelude.pure newValue, ..}
instance Property "Pattern" RecipeParametersProperty where
  type PropertyType "Pattern" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {pattern = Prelude.pure newValue, ..}
instance Property "PatternOption1" RecipeParametersProperty where
  type PropertyType "PatternOption1" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {patternOption1 = Prelude.pure newValue, ..}
instance Property "PatternOption2" RecipeParametersProperty where
  type PropertyType "PatternOption2" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {patternOption2 = Prelude.pure newValue, ..}
instance Property "PatternOptions" RecipeParametersProperty where
  type PropertyType "PatternOptions" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {patternOptions = Prelude.pure newValue, ..}
instance Property "Period" RecipeParametersProperty where
  type PropertyType "Period" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {period = Prelude.pure newValue, ..}
instance Property "Position" RecipeParametersProperty where
  type PropertyType "Position" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {position = Prelude.pure newValue, ..}
instance Property "RemoveAllPunctuation" RecipeParametersProperty where
  type PropertyType "RemoveAllPunctuation" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeAllPunctuation = Prelude.pure newValue, ..}
instance Property "RemoveAllQuotes" RecipeParametersProperty where
  type PropertyType "RemoveAllQuotes" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeAllQuotes = Prelude.pure newValue, ..}
instance Property "RemoveAllWhitespace" RecipeParametersProperty where
  type PropertyType "RemoveAllWhitespace" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeAllWhitespace = Prelude.pure newValue, ..}
instance Property "RemoveCustomCharacters" RecipeParametersProperty where
  type PropertyType "RemoveCustomCharacters" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeCustomCharacters = Prelude.pure newValue, ..}
instance Property "RemoveCustomValue" RecipeParametersProperty where
  type PropertyType "RemoveCustomValue" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeCustomValue = Prelude.pure newValue, ..}
instance Property "RemoveLeadingAndTrailingPunctuation" RecipeParametersProperty where
  type PropertyType "RemoveLeadingAndTrailingPunctuation" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeLeadingAndTrailingPunctuation = Prelude.pure newValue, ..}
instance Property "RemoveLeadingAndTrailingQuotes" RecipeParametersProperty where
  type PropertyType "RemoveLeadingAndTrailingQuotes" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeLeadingAndTrailingQuotes = Prelude.pure newValue, ..}
instance Property "RemoveLeadingAndTrailingWhitespace" RecipeParametersProperty where
  type PropertyType "RemoveLeadingAndTrailingWhitespace" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeLeadingAndTrailingWhitespace = Prelude.pure newValue, ..}
instance Property "RemoveLetters" RecipeParametersProperty where
  type PropertyType "RemoveLetters" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeLetters = Prelude.pure newValue, ..}
instance Property "RemoveNumbers" RecipeParametersProperty where
  type PropertyType "RemoveNumbers" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeNumbers = Prelude.pure newValue, ..}
instance Property "RemoveSourceColumn" RecipeParametersProperty where
  type PropertyType "RemoveSourceColumn" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeSourceColumn = Prelude.pure newValue, ..}
instance Property "RemoveSpecialCharacters" RecipeParametersProperty where
  type PropertyType "RemoveSpecialCharacters" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {removeSpecialCharacters = Prelude.pure newValue, ..}
instance Property "RightColumns" RecipeParametersProperty where
  type PropertyType "RightColumns" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {rightColumns = Prelude.pure newValue, ..}
instance Property "SampleSize" RecipeParametersProperty where
  type PropertyType "SampleSize" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {sampleSize = Prelude.pure newValue, ..}
instance Property "SampleType" RecipeParametersProperty where
  type PropertyType "SampleType" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {sampleType = Prelude.pure newValue, ..}
instance Property "SecondInput" RecipeParametersProperty where
  type PropertyType "SecondInput" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {secondInput = Prelude.pure newValue, ..}
instance Property "SecondaryInputs" RecipeParametersProperty where
  type PropertyType "SecondaryInputs" RecipeParametersProperty = [SecondaryInputProperty]
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {secondaryInputs = Prelude.pure newValue, ..}
instance Property "SheetIndexes" RecipeParametersProperty where
  type PropertyType "SheetIndexes" RecipeParametersProperty = ValueList (Value Prelude.Integer)
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {sheetIndexes = Prelude.pure newValue, ..}
instance Property "SheetNames" RecipeParametersProperty where
  type PropertyType "SheetNames" RecipeParametersProperty = ValueList (Value Prelude.Text)
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {sheetNames = Prelude.pure newValue, ..}
instance Property "SourceColumn" RecipeParametersProperty where
  type PropertyType "SourceColumn" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {sourceColumn = Prelude.pure newValue, ..}
instance Property "SourceColumn1" RecipeParametersProperty where
  type PropertyType "SourceColumn1" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {sourceColumn1 = Prelude.pure newValue, ..}
instance Property "SourceColumn2" RecipeParametersProperty where
  type PropertyType "SourceColumn2" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {sourceColumn2 = Prelude.pure newValue, ..}
instance Property "SourceColumns" RecipeParametersProperty where
  type PropertyType "SourceColumns" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {sourceColumns = Prelude.pure newValue, ..}
instance Property "StartColumnIndex" RecipeParametersProperty where
  type PropertyType "StartColumnIndex" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {startColumnIndex = Prelude.pure newValue, ..}
instance Property "StartPattern" RecipeParametersProperty where
  type PropertyType "StartPattern" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {startPattern = Prelude.pure newValue, ..}
instance Property "StartPosition" RecipeParametersProperty where
  type PropertyType "StartPosition" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {startPosition = Prelude.pure newValue, ..}
instance Property "StartValue" RecipeParametersProperty where
  type PropertyType "StartValue" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {startValue = Prelude.pure newValue, ..}
instance Property "StemmingMode" RecipeParametersProperty where
  type PropertyType "StemmingMode" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {stemmingMode = Prelude.pure newValue, ..}
instance Property "StepCount" RecipeParametersProperty where
  type PropertyType "StepCount" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {stepCount = Prelude.pure newValue, ..}
instance Property "StepIndex" RecipeParametersProperty where
  type PropertyType "StepIndex" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {stepIndex = Prelude.pure newValue, ..}
instance Property "StopWordsMode" RecipeParametersProperty where
  type PropertyType "StopWordsMode" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {stopWordsMode = Prelude.pure newValue, ..}
instance Property "Strategy" RecipeParametersProperty where
  type PropertyType "Strategy" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {strategy = Prelude.pure newValue, ..}
instance Property "TargetColumn" RecipeParametersProperty where
  type PropertyType "TargetColumn" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {targetColumn = Prelude.pure newValue, ..}
instance Property "TargetColumnNames" RecipeParametersProperty where
  type PropertyType "TargetColumnNames" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {targetColumnNames = Prelude.pure newValue, ..}
instance Property "TargetDateFormat" RecipeParametersProperty where
  type PropertyType "TargetDateFormat" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {targetDateFormat = Prelude.pure newValue, ..}
instance Property "TargetIndex" RecipeParametersProperty where
  type PropertyType "TargetIndex" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {targetIndex = Prelude.pure newValue, ..}
instance Property "TimeZone" RecipeParametersProperty where
  type PropertyType "TimeZone" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {timeZone = Prelude.pure newValue, ..}
instance Property "TokenizerPattern" RecipeParametersProperty where
  type PropertyType "TokenizerPattern" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {tokenizerPattern = Prelude.pure newValue, ..}
instance Property "TrueString" RecipeParametersProperty where
  type PropertyType "TrueString" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {trueString = Prelude.pure newValue, ..}
instance Property "UdfLang" RecipeParametersProperty where
  type PropertyType "UdfLang" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {udfLang = Prelude.pure newValue, ..}
instance Property "Units" RecipeParametersProperty where
  type PropertyType "Units" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {units = Prelude.pure newValue, ..}
instance Property "UnpivotColumn" RecipeParametersProperty where
  type PropertyType "UnpivotColumn" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {unpivotColumn = Prelude.pure newValue, ..}
instance Property "UpperBound" RecipeParametersProperty where
  type PropertyType "UpperBound" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {upperBound = Prelude.pure newValue, ..}
instance Property "UseNewDataFrame" RecipeParametersProperty where
  type PropertyType "UseNewDataFrame" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {useNewDataFrame = Prelude.pure newValue, ..}
instance Property "Value" RecipeParametersProperty where
  type PropertyType "Value" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {value = Prelude.pure newValue, ..}
instance Property "Value1" RecipeParametersProperty where
  type PropertyType "Value1" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {value1 = Prelude.pure newValue, ..}
instance Property "Value2" RecipeParametersProperty where
  type PropertyType "Value2" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {value2 = Prelude.pure newValue, ..}
instance Property "ValueColumn" RecipeParametersProperty where
  type PropertyType "ValueColumn" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty
        {valueColumn = Prelude.pure newValue, ..}
instance Property "ViewFrame" RecipeParametersProperty where
  type PropertyType "ViewFrame" RecipeParametersProperty = Value Prelude.Text
  set newValue RecipeParametersProperty {..}
    = RecipeParametersProperty {viewFrame = Prelude.pure newValue, ..}