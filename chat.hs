import Data.Text hiding (map)
import NLP.Chunk
import NLP.POS
import NLP.Types

textTags :: Tag t => Text -> IO (Sentence, [t])
textTags str = do
    tgr <- defaultTagger
    return (map unzipTags $ tag tgr str)

sentenceTags = map unzipTags
